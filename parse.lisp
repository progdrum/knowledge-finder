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

;; Struct in which parsed data is to be stored
;; Perhaps generalize by making this an object and making PARSE-AND-STORE 
;; a generic function to dispatch on different objects for processing 
;; different kinds of data sets?
(defstruct mytracks-data
  (segment 0 :type integer)
  (point 0 :type integer)
  (latitude 0.0 :type float)
  (longitude 0.0 :type float)
  (altitude 0.0 :type float)
  (bearing 0.0 :type float)
  (accuracy 0 :type integer)
  (speed 0.0 :type float)
  (time "" :type string)
  (power nil)
  (cadence nil)
  (heart-rate nil))

;; Use split-sequence to break on commas and store (in struct?) 
;; for further processing
(defun parse-and-store (file)
  (with-open-file (csv-input file :direction :input)
    ; The following line also needs to store the sequence.
    (split-sequence:split-sequence #\, #|Line read in|#)))
