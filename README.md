automake-tap
============

Example on how to use Automake's TAP support

```Shell
make -f Makefile.dist
./configure
make
```

You can run the tests as follows:

```Shell
make check
```

The example includes some failing tests. You should see something like the following output:

```Shell
make  check-TESTS
make[1]: Entering directory `/home/jan/test/automake-tap'
make[2]: Entering directory `/home/jan/test/automake-tap'
PASS: foo.test 1 - Swallows fly
XFAIL: foo.test 2 - Caterpillars fly # TODO metamorphosis in progress
XPASS: foo.test 3 - Butterflies fly # TODO this test should still fail
SKIP: foo.test 4 - Pigs fly # SKIP not enough acid
PASS: foo.test 5 - Flies fly too :-)
FAIL: bar.test 1 - Bummer, this test has failed.
PASS: bar.test 2 - This passed though.
ERROR: bar.test - Bail out! Ennui kicking in, sorry...
PASS: baz.test 1 - A test
ERROR: baz.test - missing test plan
PASS: qux.test 1 - A test
ERROR: qux.test - exited with status 7
make[3]: Entering directory `/home/jan/test/automake-tap'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/jan/test/automake-tap'
============================================================================
Testsuite summary for GNU automake-tap 1.0
============================================================================
# TOTAL: 12
# PASS:  5
# SKIP:  1
# XFAIL: 1
# FAIL:  1
# XPASS: 1
# ERROR: 3
============================================================================
See ./test-suite.log
Please report to jan@wedesoft.de
============================================================================
make[2]: Leaving directory `/home/jan/test/automake-tap'
make[1]: Leaving directory `/home/jan/test/automake-tap'
```

Also see [Automake documentation on using the TAP testing protocol]([http://www.gnu.org/software/automake/manual/html_node/Using-the-TAP-test-protocol.html).
