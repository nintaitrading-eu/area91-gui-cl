;;;; area91-gui-cl.lisp

(in-package #:area91-gui-cl)

; Note: To make the functions available, without the prefix qt::
(in-package :qt)
(named-readtables:in-readtable :qt)


; TODO: Check if the server is running. If not, show error message.

(defclass area91-gui () () 
  " Main gui class "
  (:metaclass qt-class)
  (:qt-superclass "QWidget"))

(defmethod initialize-instance :after
  " Init instance "
  ((instance area91-gui) &key) 
  (new instance))

(defmethod initialize-instance :after ((instance area91-gui) &key)
  " Init instance with settings "
  (new instance) 
  (#_setGeometry instance 200 200 300 300)
  (#_setWindowTitle instance "Area91"))

; Run the application
(make-qapplication)
(with-main-window (window (make-instance 'area91-gui)))
