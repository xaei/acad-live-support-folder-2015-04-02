(defun c:b20s ( / e i l n s x )
    (if (setq s (ssget '((0 . "INSERT"))))
        (repeat (setq i (sslength s))
            (if (not (member (setq n (cdr (assoc 2 (entget (ssname s (setq i (1- i))))))) l))
                (progn
                    (setq e (tblobjname "block" n)
                          l (cons n l)
                    )
                    (while (setq e (entnext e))
                        (setq x (entget e))
                        (princ x)
                        (entmod (subst '(8 . "0") (assoc 8 x) x))
                        (princ x)
                        (setq ss1 e)
                        (command "_chprop" (e) "" "_C" "ByLayer" "_LT" "ByLayer" "_LW" "ByLayer" "_TR" "ByLayer" "_M" "ByLayer" "")                        (princ x)
                        (princ "item ")
                    )
                )
            )
        )
    )
(command "_.regen")
(princ)
)
