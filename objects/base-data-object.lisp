;;;; This file contains the class definition for a BASIC-DATA-OBJECT. 
;;;; It is not necessarily entirely clear what should be contained here, 
;;;; except maybe some metadata about the data object itself

;;;; Author: progdrum <https://github.com/progdrum>
;;;; Authored: June 30, 2013

;;; So far, this contains metadata, such as the names of the fields and 
;;; created/updated timestamps
(defclass basic-data-object ()
  ((time-created :initform (get-universal-time))
   (last-updated :initform (get-universal-time)
		 :accessor :last-updated)
   (field-names :initarg :field-names
		:accessor :field-names))
  (:documentation
   "The basic data object from which other data objects are derived"))
