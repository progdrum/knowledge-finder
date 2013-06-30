;;;; The code contained in this file parses the CSV data exported from the 
;;;; My Tracks Google app and stores them into a data structure for further 
;;;; processing

;;;; Author: progdrum
;;;; Authored: June 29, 2013

(defpackage :parse
  (:use :common-lisp
	:split-sequence)
  (:export "parse-and-store")
  (:documentation "A package containing CSV and other parsing-related functions"))

(in-package :parse)

;; Use split-sequence to break on commas and store (in struct?) 
;; for further processing
(defun parse-and-store ()
  (with-open-file (csv-input #|file-placeholder|# :direction :input)
    ; The following line also needs to store the sequence.
    (split-sequence:split-sequence #\, #|Line read in|#)))
