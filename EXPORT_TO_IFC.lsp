; uwaga żeby to makro zadzialalo
; musi być otwarte okienko z properties'ami
(defun c:dexporttoifc()
	(setq filter '((-4 . "<OR") (0 . "ASTGRATING") (0 . "ASTBEAM") (0 . "ASTPLATE") (0 . "ASTXPLATEFOLDRELATION") (0 . "ASTBENTBEAM") (-4 . "OR>")))
	(setq elems (ssget "_X" filter))
	(command "_.pselect" "_p" "")
	(command-s "_AstM16CommAstorToIfc")
)