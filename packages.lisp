;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*-
;;;; file: packages.lisp

;;;; Copyright (c) 2014--2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage #:wolfcoin
  (:nicknames #:wlf #:wolf)
  (:use :cl
        :cl-user
        :lparallel
        :local-time
        :ironclad
        :cl-isaac
        :jonathan
        :babel
        :cl-store)
  (:shadowing-import-from :cl-user #:null)
  (:export #:start-wolfcoin
           #:stop-wolfcoin
           #:restart-wolfcoin))

(defpackage #:wolfcoin-wallet
  (:nicknames #:wlf-w #:wolf-wallet)
  (:use :cl
        :cl-user
        :local-time
        :ironclad
        :cl-isaac
        :babel
        :cl-store
        :wolfcoin)
  (:shadowing-import-from :cl-user #:null))

(defpackage #:wolfcoin-api
  (:nicknames #:wlf-api #:wolf-api)
  (:use :cl :cl-user :local-time :ironclad :cl-isaac :babel :wookie :jonathan :wolfcoin :wolfcoin-wallet)
  (:shadowing-import-from :cl-user #:null))

;; deprecate WOLFCOIN-RPC package
; (defpackage #:wolfcoin-rpc
;   (:nicknames #:wlf-rpc #:wolf-rpc)
;   (:use :cl :cl-user :local-time :ironclad :cl-isaac :babel :wookie :jonathan :wolfcoin :wolfcoin-wallet)
;   (:shadowing-import-from :cl-user #:null))

(defpackage #:wolfcoin-client
  (:nicknames #:wlf-ltk #:wolf-ltk)
  (:use :cl :cl-user :ironclad :cl-isaac :babel :jonathan :wolfcoin :wolfcoin-wallet :wolfcoin-api)
  (:shadowing-import-from :cl-user #:null))

(defpackage #:wolfcoin-ecdsa
  (:nicknames #:wlf-ecdsa #:wolf-ecdsa)
  (:use :cl :cl-user :ironclad :bit-smasher :cl-isaac)
  (:shadowing-import-from :cl-user #:null))

(defpackage #:wolfcoin-p2p
  (:nicknames #:wlf-p2p #:wolf-p2p)
  (:use :cl :cl-user))

;; EOF
