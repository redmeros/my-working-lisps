(defun c:changecolor()
  (setq lines (ssget "x" (list (cons 0 "REGION") (cons -4 "<NOT") (cons 8 "_DCS_NOT_DONE") (cons -4 "NOT>"))))
  (princ "got ss")
  (setq idx 0)
  (if lines
	  (while (setq handle (ssname lines idx))
	    (setq ent (entget handle))
	    (setq ent (subst (cons 8 "_DCS_NOT_DONE") (assoc 8 ent) ent))
	    ;(setq ent (append ent '((62 . 2))))
	    (entmod ent)
	    (setq idx (1+ idx))
	   )
    )
)

(defun c:createlayerrs()
  (command-s "_-layer" "_n" "_DCS_TODO" "")
  (command-s "_-layer" "_c" 4 "_DCS_TODO" "")
  (command-s "_-layer" "_n" "_DCS_DONE" "")
  (command-s "_-layer" "_c" 3 "_DCS_DONE" "")
  (command-s "_-layer" "_n" "_DCS_ERR" "")
  (command-s "_-layer" "_c" 1 "_DCS_ERR" "")
  (setvar "clayer" "_DCS_TODO")
)

(defun c:explodepolimeshtosolid() 
	(setq polymesh (ssget "_X" '((100 . "AcDbPolyFaceMesh") (8 . "_DCS_TODO") ) ) )
	(setq idx 0)
  	(if polymesh
	  	(while (setq ent (ssname polymesh idx))
		  (explodepolimeshtosolid ent)
		  (setq idx (1+ idx))
		)
	  )
)

; to jest funkcja wewnetrzna - w razie czego można z niej korzystać
; w inny sposob - jest wywoływana przez c:explodepolimeshtosolid()
(defun explodepolimeshtosolid(mesh)
	(command-s "_explode" mesh "")
	(setq face3d (ssget "_X" '((0 . "3DFACE") (8 . "_DCS_TODO"))))
	(if face3d
		(command-s "_region" face3d "")
		(princ "nie ma 3dfaceow")
	)
	(setq regions (ssget "_X" (list (cons 0 "REGION") (cons 8 "_DCS_TODO")) ))
	(if regions
		(command-s "_surfsculpt" regions "")
		(princ "nie ma regionow")
	)
  	;ponowne wybranie wszystkich regionow i nadanie im koloru 1 (czerwony) - to
  	;oznacza ze regiony zostaly niezrobione
  	(setq regions (ssget "_X" '((0 . "REGION")(0 . "_DCS_TODO")) ))
  	(if regions
	  	(progn
		  (setq idx 0)
		  (while (setq handle (ssname regions idx))
		    (setq ent (entget handle))
		    (setq ent (subst (cons 8 "_DCS_ERR") (assoc 8 ent) ent))
		    (entmod ent)
		    (setq idx (1+ idx))
		  )
		)
	  	(princ "nie ma regionow do zmiany koloru - wszystko poszlo ok")
	)
  	; OZNACZA NIE ZROBIONE 3DFACY - NA DCS_ERR
  	(setq faces (ssget "_X" '((0 . "3DFACE") (8 . "_DCS_TODO")) ))
  	(if faces
	  (progn
	    (setq idx 0)
	    (while (setq handle (ssname faces idx))
	      (setq ent (entget handle))
	      (setq ent (subst (cons 8 "_DCS_ERR") (assoc 8 ent) ent ))
	      (entmod ent)
	      (setq idx (1+ idx))
	    )
	  )
	  (princ "nie ma 3dfaceow do zmiany koloru - wszystko ok")
	)
  	; oznacza zrobione solidy na _DCS_DONE
  	(setq solids (ssget "_X" '((0 . "3DSOLID") (8 . "_DCS_TODO")) ))
  	(if solids
	  (progn
	    (setq idx 0)
	    (while (setq handle (ssname solids idx))
	      (setq ent (entget handle))
	      (setq ent (subst (cons 8 "_DCS_DONE") (assoc 8 ent) ent ))
	      (entmod ent)
	      (setq idx (1+ idx)
	    )
	  )
	  (princ "nie ma solidow do zmiany kolorow")
	  )
	)
)