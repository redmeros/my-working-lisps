(defun catch-me-if-you-can (dividend divisor / errobj)

  (setq errobj (vl-catch-all-apply '/ (list dividend divisor)))

  (if (vl-catch-all-error-p errobj)

    (progn

      (print (strcat "An error occurred: "

                     (vl-catch-all-error-message errobj)

             )

      )

      (prompt "Do you want to continue? (Y/N) -> ")

      (setq ans (getstring))

      (if (equal (strcase ans) "Y")

        (print "Okay, I'll keep going")

      )

    )

    (print errobj)

  )

  (princ)

)