(defun ld(fname)
	(princ (strcat "\n" "£adujê: " path fname ".lsp"))
	(load (strcat path "F_XLINE" ".lsp"))
	(princ)
)

(setq path "D:/Dropbox/LISPS/UPORZADKOWANE/")

(ld "F_XLINE")
(ld "OSNAPZ_SWITCHER")
(ld "QUICK_BLOCK")

(princ)