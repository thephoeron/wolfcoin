;; file: wolfcoin-test.asd

(in-package :cl-user)

(defpackage wolfcoin-test-asd
  (:use :cl :asdf))
  
(in-package :wolfcoin-test-asd)

(defsystem wolfcoin-test
  :serial t
  :version "0.0.1"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Test suite for Wolfcoin"
  :license "MIT"
  :depends-on (:wolfcoin
               :prove)
  :components ((:module "t"
                :serial t
                :components ((:file "wolfcoin"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
  
