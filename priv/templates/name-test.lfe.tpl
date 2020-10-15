(defmodule {{name}}-tests
  (behaviour ltest-unit)
  (export all)) ; needed for skipped tests

(include-lib "ltest/include/ltest-macros.lfe")

;;; -----------
;;; library API
;;; -----------

(deftest my-fun
  (is-equal 'hellow-orld ({{name}}:my-fun)))

(deftestskip dont-run-this-yet
  (is-equal 1 2))