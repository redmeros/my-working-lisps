(defun v:normalizeBolts(filter)
	(setq elems (ssget "_X" filter))
		(if elems
		(progn
			(command-s "_AstM4SwitchReprMode" "DEFAULT" elems "")
		)
		(princ "Nie znaleziono elementow\n")
	)	
	(princ "Normalizing done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun v:normalizeObjects(filter)
	(setq elems (ssget "_X" filter))
	(if elems
		(command-s "_AstM4SwitchReprMode" "DEFAULT" elems "")
		(princ "Nie znaleziono elementow\n")
	)	
	(princ "Normalizing done done: ")
	(princ (car filter))
	(princ "\n")
)

(defun v:normalizeGratings(filter)
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

(defun c:dnormalizeView()
  (v:normalizeBolts '((0 . "ASTBOLTMID")))
  (v:normalizeBolts '((0 . "ASTBOLT2POINTS")))
  (v:normalizeBolts '((0 . "ASTANCHOR")))

  (v:normalizeObjects '((0 . "ASTBEAM")))
  (v:normalizeObjects '((0 . "ASTPLATE")))
  
  (v:normalizeGratings '((0 . "ASTGRATING")))
)