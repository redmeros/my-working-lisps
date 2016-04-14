(defun c:w()
	(if (setq i 0 ss (ssget '((0 . "POLYLINE,LWPOLYLINE")(-4 . "&")(70 . 1))))
	       ;; ssget code above only selects closed polylines
	  (progn
	    (while (< i (sslength ss))
	      (setq x (ssname ss i))
	      (command "._fillet" "_P" x)
	      (setq i (1+ i))
	    )
	  )
	)
)
