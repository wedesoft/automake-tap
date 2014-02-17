#!/usr/bin/guile --no-auto-compile
!#
(use-modules (ggspec lib))

(suite "bar"
  (tests
    (test "Bummer, this test has failed."
      e (assert-equal 0 1))
    (test "This passed though."
      e (assert-equal 1 1))
    (test "This will not be seen."
      e (assert-true #f)
      (options
        (option 'skip #t))))
  (options
    (option 'output-cb output-tap)
    (option 'tally #t)))

#!
echo '# Suite: bar'
echo 'not ok - Bummer, this test has failed.'
echo '# Expected: a pass'
echo '#      Got: a fail'
echo 'ok - This passed though.'
echo 'Bail out! Ennui kicking in, sorry...'
echo 'ok - This will not be seen.'
echo 1..3
!#

