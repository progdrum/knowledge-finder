;;;; This file uses quicklisp to use the libraries required for this application 
;;;; to work

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: July 5, 2013

(in-package :kf)

(defconstant +libraries+
  '(:split-sequence))

(defun load-libraries ()
  "This function loads the libraries required for use by the application"
  (mapcar #'quicklisp:quickload +libraries+))
