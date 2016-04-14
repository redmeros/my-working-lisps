;obraca układ wspolrzednych o 90deg wzgledem osi x
(defun c:rx()
	(command "_UCS" "_X" "")
	(princ)
)
;obraca układ wspolrzednych o 90deg wzgledem osi y
(defun c:ry()
	(command "_UCS" "_Y" "")
	(princ)
)
;obraca układ wspolrzednych o 90deg wzgledem osi z
(defun c:rz()
	(command "_UCS" "_Z" "")
	(princ)
)

;przywraca globalny układ współrzędnych
(defun c:rw()
	(command "_UCS" "_W")
	(princ)
	)
