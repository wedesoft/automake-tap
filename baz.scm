#!/usr/bin/guile --no-auto-compile
!#
(use-modules (ggspec lib))

(exit
  (suite-failed
    (suite "baz"
      (tests
        (test "A test"
          e (assert-equal 1 1)))
      (options
        (option 'output-cb output-tap)
        (option 'tally #t)))))

#!
echo '# Suite: baz'
echo ok - A test
echo 1..1
# Exit with error, even if all the tests have been successful.
exit 7
!#

