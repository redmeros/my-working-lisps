;helper
;;--------------------=={ String Subst }==--------------------;;
;;                                                            ;;
;;  Substitutes a string for all occurrences of another       ;;
;;  string within a string.                                   ;;
;;------------------------------------------------------------;;
;;  Author: Lee Mac, Copyright © 2011 - www.lee-mac.com       ;;
;;------------------------------------------------------------;;
;;  Arguments:                                                ;;
;;  new - string to be substituted for 'old'                  ;;
;;  old - string to be replaced                               ;;
;;  str - the string to be searched                           ;;
;;------------------------------------------------------------;;
;;  Returns:  String with 'old' replaced with 'new'           ;;
;;------------------------------------------------------------;;

(defun LM:StringSubst ( new old str / inc len )
    (setq len (strlen new)
          inc 0
    )
    (while (setq inc (vl-string-search old str inc))
        (setq str (vl-string-subst new old str inc)
              inc (+ inc len)
        )
    )
    str
)

;AS ASSEMBLY PART SELECT
(defun c:ss ()
  (COMMAND "_AstM4SwitchReprMode" "MAINSTRUCTURE")
)

;select part with the connection elements
(defun c:sss()
	(COMMAND "_AstM4CommMarkSelAdd" pause "")
	(COMMAND "_AstM4CommSelectMarkedObjects" "")
	(COMMAND "_AstM4CommMarkConnMeans" "")
	(PRINC "DUPE")
)


;AS_COPY
(defun c:kk ()
  (command "-ASTransformAndConnect" "_c")
)

;AS_TRIM TO LINE
(defun c:ttr ()
  (command "_AstM9CommTrimExtend" "A" "_L")
)

;point weld
(defun c:sr()
	(command "_AstM4WeldSeam" "POINT")
)

;ukrywa ramki polaczen
(defun c:urp()
	(command "_AstM4SelectObjectByName" "ASTXDIALOG")
	(command "_AstM4SwitchReprMode" "off")
)

;pokazuje ramki polaczen
(defun c:prp()
	(command "_AstM4SelectObjectByName" "ASTXDIALOG")
	(command "_AstM4SwitchReprMode" "default")
)

;0. saves current file!
;1. saves file as file_ACIS then tries to explode every instance of AS object to ACIS
;2. saves file

(defun c:explodeandsave	()
  (command "_qsave")
  (setvar "filedia" 0)
  (setq newdwgname (LM:StringSubst "_ACIS.dwg" ".dwg" (getvar "SAVENAME")))
  (command "_saveas" "" newdwgname)
  (command "_AstM4CommSelectAllDscObjects" "ALL")
  (command "_AstM4CommExplodeToAcis")
  (princ)
  (setvar "filedia" 1)
)
