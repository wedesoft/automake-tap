ACLOCAL_AMFLAGS = -I m4

TESTS_ENVIRONMENT =
TEST_EXTENSIONS = .test

TEST_LOG_COMPILE = $(SHELL)
TEST_LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) $(top_srcdir)/build-aux/tap-driver.sh

TESTS = foo.test bar.test baz.test qux.test
EXTRA_DIST = Makefile.dist $(TESTS)
