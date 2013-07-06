;;;; The code contained in this file parses the CSV data exported from the 
;;;; My Tracks Google app and stores them into a data structure for further 
;;;; processing

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: June 29, 2013

(defpackage :parse
  (:use :common-lisp
	:split-sequence)
  (:export "PARSE-AND-STORE"
	   "DEFOBJECT-FROM-DATA")
  (:documentation
   "A package containing CSV and other parsing-related functions and methods"))

(in-package :parse)

;; A macro for creating new object data classes on the fly
#|(defmacro defobject-from-data (obj-name fields &rest body)
  `(defclass obj-name (basic-data-object)
     `(,(mapcar #'(lambda (field-name)
		    `(field-name :initarg ,,(intern field-name)
				 :accessor ,,(intern field-name)))
		,fields))))|#

;; A function for parsing a CSV file and storing it in an associated data object
(defun parse-and-store (file)
  "Parse a CSV file and store it in an appropriate data object"
  (with-open-file (lines file)
    (loop :for line := (read-line lines nil)
          :while line :collect (split-sequence:split-sequence #\, line))))
