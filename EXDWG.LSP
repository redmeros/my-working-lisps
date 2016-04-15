;Open Windows Explorer to the Current Drawing Folder
;---------------------------------------------------
(defun c:ExDWG ()
  (startapp "Explorer" (strcat "/N,/E," (getvar "DWGPREFIX")))
  (princ)
)


(defun c:fl()  ;Change "fl" to any command you wish to use
   (startapp "explorer" (getvar "dwgprefix"))
   (princ)
)