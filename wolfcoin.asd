;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*-
;;;; file: wolfcoin.asd

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage wolfcoin-asd
    (:use :cl :asdf)
    (:export #:*wolfcoin-version*))

(in-package :wolfcoin-asd)

(defparameter *wolfcoin-version* "0.0.1")

(defsystem wolfcoin
    :version #.*wolfcoin-version*
    :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
    :license "MIT"
    :description "Crypto-currency client, protocol, and wallet written in Common Lisp."
    :serial t
    :depends-on (:lparallel
                 :local-time
                 :ironclad
                 :bit-smasher
                 :cl-isaac
                 :hunchentoot
                 :cl-json
                 :flexi-streams
                 :babel
                 :cl-store)
    :components ((:file "packages")
                 (:file "coin")
                 (:file "transaction")
                 (:file "p2p")
                 (:module "ecdsa"
                  :serial t
                  :components ((:file "eckey")
                               (:file "ecdsa")))
                 (:file "blockchain")
                 (:file "miner")
                 (:module "wallet"
                  :serial t
                  :components ((:file "db")
                               (:file "wallet")))
                 (:module "rpc"
                  :serial t
                  :components ((:file "interface")
                               (:file "rpc")))
                 (:module "client"
                  :serial t
                  :components ((:file "client")))
                 (:file "wolfcoin")))

;; EOF
