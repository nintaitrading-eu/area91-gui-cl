;;;; area91-gui-cl.asd

(asdf:defsystem #:area91-gui-cl
  :description "Describe area91-gui-cl here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:qt)
  :components ((:file "package")
               (:file "area91-gui-cl")))
