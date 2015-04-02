;demo plans settings oneoff
(defun c:plan-demo-settings-v0 ()
(command "_layer" "lweight" "0.9" "*A-DEMO*" "")
(command "_layer" "lweight" "0.05" "*A-DEMO-PATT*" "")
(command "_layer" "lweight" "0.05" "*A-DEMO-WALL-PATT*" "")
(command "_layer" "lweight" "0.05" "*A-DEMO-NOTE*" "")
(command "_layer" "lweight" "0.05" "*A-DEMO-ANNO-NOTE*" "")
(command "_layer" "lweight" "0.13" "*OVHD*" "")
(princ "demo!")
(setq linelist '(("DEMO8" . "acad.lin")
                 ("Dashed" . "acad.lin")
                 ("HIDDEN2" . "acad.lin")
                 ))
(foreach lin linelist
	(if (tblsearch "LTYPE" (car lin))
		(command "_linetype" "_load" (car lin) (cdr lin) "_yes" "")
		(command "-linetype" "_load" (car lin) (cdr lin) "")
	)
)
(command "_layer" "ltype" "DEMO8" "*DEMO*" "")
(command "_layer" "ltype" "HIDDEN2" "*FLOR-OVHD*" "")
(command "_layer" "ltype" "CONTINUOUS" "*A-DEMO-PATT*,*A-DEMO-WALL-PATT*, *A-EXST-FLOR-OPEN*" "")
(command "_layer" "freeze" "*EQPM*" "")
(command "_layer" "freeze" "*A-DEMO-ANNO*" "")
(command "_layer" "freeze" "*A-EXST-OVHD*" "")
(command "_layer" "transparency" "0" "*" "")
(command "_layer" "pstyle" "40%" "*EXST*" "")

);end of defun
;
;
;scraps
;(command "xref" "reload" "*")
;(command "_script" "../Desktop/autolisp/demoPlansSettings.scr")
;(command "_layer" "ltype" "DEMO" "*DEMO*" "")
;(command "_layer" "ltype" "CONTINUOUS" "*A-DEMO-PATT*" "")
