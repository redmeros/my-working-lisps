(defun c:saveblockasxref ( / e i n s x )
    (if (setq s (ssget '((0 . "INSERT"))))
        (progn
            (setq i 0
                  n (sslength s)
            )
            (while (< i n)
                (setq e (ssname s i)
                      x (cdr (assoc 0 (entget e)))
                      i (1+ i)
                )
;;				(setq blockName (cdr (assoc 2 (entget e))));		
;;				(setq insertPoint (cdr (assoc 10 (entget e))))	
				
				;;(command "_-wblock" blockName (strcat blockName ".dwg"))
            )
        )
    )
    (princ)
)