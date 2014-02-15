#!/usr/bin/guile --no-auto-compile
!#
(use-modules (ggspec lib))

(exit
  (suite-failed
    (suite "foo"
      (tests
        (test "Swallows fly"
          e (assert-equal 1 1))
        (test "Caterpillars fly"
          e
          (assert-equal
            "caterpillars fly"
            "caterpillars dont fly"))
        (test "Pigs fly"
          e (assert-true #f)
          (options
            (option 'skip #t)))
        (test "Flies fly too :-}"
          e
          (assert-equal
            "Fly"
            (string-append (substring "Flies" 0 2) "y"))))
      (options
        (option 'output-cb output-tap)
        (option 'tally #t)))))

#!
echo '# Suite: foo'
echo 'ok - Swallows fly'
echo 'not ok - Caterpillars fly # TODO metamorphosis in progress'
echo '# Expected: caterpillars fly'
echo '#      Got: caterpillars dont fly'
echo 'ok - Pigs fly # SKIP not enough acid'
echo 'ok - Flies fly too :-)'
echo 1..4 # Number of tests to be executed.
!#

