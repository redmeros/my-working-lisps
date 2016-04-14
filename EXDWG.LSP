;Open Windows Explorer to the Current Drawing Folder
;---------------------------------------------------
(defun c:ExDWG ()
  (startapp "Explorer" (strcat "/N,/E," (getvar "DWGPREFIX")))
  (princ)
)