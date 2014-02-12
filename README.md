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
FAIL: foo.test
FAIL: bar.test
FAIL: baz.test
make[3]: Entering directory `/home/jan/test/automake-tap'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/home/jan/test/automake-tap'
============================================================================
Testsuite summary for GNU automake-tap 1.0
============================================================================
# TOTAL: 3
# PASS:  0
# SKIP:  0
# XFAIL: 0
# FAIL:  3
# XPASS: 0
# ERROR: 0
============================================================================
See ./test-suite.log
Please report to bug-automake@gnu.org
============================================================================
make[2]: *** [test-suite.log] Error 1
make[2]: Leaving directory `/home/jan/test/automake-tap'
make[1]: *** [check-TESTS] Error 2
make[1]: Leaving directory `/home/jan/test/automake-tap'
make: *** [check-am] Error 2
```
