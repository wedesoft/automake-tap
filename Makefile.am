TESTS_ENVIRONMENT =
TEST_EXTENSIONS = .test

TEST_LOG_COMPILER = $(SHELL)
TEST_LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) $(top_srcdir)/build-aux/tap-driver.sh

TESTS = foo.test bar.test baz.test
EXTRA_DIST = Makefile.dist $(TESTS)
