(defun ld(fname)
	(princ (strcat "\n" "Laduje: " path fname ".lsp"))
	(load (strcat path "F_XLINE" ".lsp"))
	(princ)
)

(setq path "D:/DCS-PROJEKTY/_POMOCE/LISPY/")

(ld "ADVANCE_STEEL")
(ld "EXDWG")
(ld "F_XLINE")
(ld "OSNAPZ_SWITCHER")
(ld "QUICK_BLOCK")
(ld "UCS_MANIPULATE")

(princ)