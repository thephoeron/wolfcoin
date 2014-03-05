;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: WOLFCOIN; Base: 10 -*- file: packages.lisp

;;;; Copyright (c) 2014 "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage #:wolfcoin
  (:nicknames #:wc #:wolf)
  (:use :cl
        :cl-user
        :local-time
        :ironclad
        :cl-isaac
        :cl-json
        :babel
        :cl-store)
  (:export #:start-wolfcoin
           #:stop-wolfcoin
           #:restart-wolfcoin))

(defpackage #:wolfcoin-wallet
  (:nicknames #:wc-w #:wolf-wallet)
  (:use :cl
        :cl-user
        :local-time
        :ironclad
        :cl-isaac
        :cl-json
        :babel
        :cl-store
        :wolfcoin)
  (:export ))

;; EOF
