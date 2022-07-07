(defun hideObjects(filter)	
	(setq solids (ssget "_X" filter))
	(if solids
		(command-s "_Hideobjects" solids "")
	  	(princ "Nie znaleziono elementow\n")
	 )
	(princ "Hiding done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun delObjects(filter)
	(setq elems (ssget "_X" filter))
	(if elems
		(command-s "_erase" elems "")
		(princ "Nie znaleziono elementow\n")
	)
	(princ "Deleting done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun normalizeObjects(filter)
	(setq elems (ssget "_X" filter))
	(if elems
		(command-s "_AstM4SwitchReprMode" "DEFAULT" elems "")
		(princ "Nie znaleziono elementow\n")
	)	
	(princ "Normalizing done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun normalizeBolts(filter)
	(setq elems (ssget "_X" filter))
		(if elems
		(progn
			(command-s "_AstM4SwitchReprMode" "DEFAULT" elems "")
			(command-s "_ASTORCHANGEREP" elems "")
			(command-s "_ASTORCHANGEREP" elems "")
		)
		(princ "Nie znaleziono elementow\n")
	)	
	(princ "Normalizing done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun normalizeGratings(filter)
	(setq elems (ssget "_X" filter))
		(if elems
		(progn
			(command-s "_AstM4SwitchReprMode" "DEFAULT" elems "")
			(command-s "_ASTORCHANGEREP" elems "")
			(command-s "_ASTORCHANGEREP" elems "")
			(command-s "_ASTORCHANGEREP" elems "")
		)
		(princ "Nie znaleziono elementow\n")
	)	
	(princ "Normalizing done done: ")
	(princ (car filter))
	(princ "\n")
)


(defun c:newexporttonavis()
  (normalizeBolts '((0 . "ASTBOLTMID")))
  (normalizeBolts '((0 . "ASTBOLT2POINTS")))
  (normalizeBolts '((0 . "ASTANCHOR")))

  (normalizeObjects '((0 . "ASTBEAM")))
  (normalizeObjects '((0 . "ASTPLATE")))
  
  (normalizeGratings '((0 . "ASTGRATING")))

  (hideObjects '((8 . "DCS_HIDE_IN_NAVIS")))
  (hideObjects '((0 . "CIRCLE")))
  (hideObjects '((0 . "REGION")))
  (hideObjects '((0 . "SURFACE")))
  
  (hideObjects '((0 . "ASTWALL")))
  (hideObjects '((0 . "ASTXSTRUCTURALBOX")))
  ; tutaj powinien byc prompt
  (hideObjects '((0 . "ASTGRID")))
  (hideObjects '((0 . "ASTXUSERDEFINEDPOINT")))
  (hideObjects '((0 . "LWPOLYLINE")))
  (hideObjects '((0 . "ACDBPOINTCLOUDEX")))
  (hideObjects '((0 . "ARC")))
  (hideObjects '((0 . "INSERT")))
  (hideObjects '((0 . "LINE")))
  (hideObjects '((0 . "3DSOLID")))
  (hideObjects '((0 . "BODY")))
  (hideObjects '((0 . "ASTXCAMERA")))
  (hideObjects '((0 . "ASTXDIALOG")))
  (hideObjects '((0 . "ASTWELD")))
  (hideObjects '((0 . "ASTXBEAMMULTICONTOURNOTCH")))
  (hideObjects '((0 . "ASTHOLEPLATE")))
  (hideObjects '((0 . "ASTHOLEBEAM")))
  (hideObjects '((0 . "ASTXPLATEFEATVERTFILLET")))
  (hideObjects '((0 . "ASTUSERDIALOG")))
  (hideObjects '((0 . "ASTXBEAMFEATEDGE")))
  (hideObjects '((0 . "ASTXPLATECONTOURNOTCH")))
  (hideObjects '((0 . "ASTXBEAMSHORTENING")))
  (hideObjects '((0 . "ASTXMODELVIEW")))
 
  (delObjects '((0 . "ASTXWORKAREA")))
  
  (command-s "_ExportToNav")
  (princ)
)