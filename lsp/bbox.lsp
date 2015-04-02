(defun c:BBox( / ss n m e vla-e minpt maxpt fp fn )
  ;(vl-load-com)
  (setq ss (ssget '((0 . "*"))))
  (setq fn (getfiled "" "" "" 7))
  (if (null fn) (exit))
  (setq fp (open fn "w"))
  (setq n 0)
  (setq m (sslength ss))
  (while (< n m)
    (setq e (ssname ss n))
    (setq vla-e (vlax-ename->vla-object e))
    (vla-getboundingbox vla-e 'minpt 'maxpt)
    (setq minpt (vlax-safearray->list minpt))
    (princ (car minpt) fp)(princ "," fp)
    (princ (cadr minpt) fp)(princ "," fp)
    (princ (caddr minpt) fp)(princ "," fp)
    (setq maxpt (vlax-safearray->list maxpt))
    (princ (car maxpt) fp)(princ "," fp)
    (princ (cadr maxpt) fp)(princ "," fp)
    (princ (caddr maxpt) fp)
    (princ (chr 13) fp)
    (setq n (1+ n))
  )
  (close fp)
  (princ)
)