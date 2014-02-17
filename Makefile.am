ACLOCAL_AMFLAGS = -I m4

TESTS_ENVIRONMENT =
TEST_EXTENSIONS = .scm

SCM_LOG_COMPILE = $(GUILE) --no-auto-compile
SCM_LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) $(top_srcdir)/build-aux/tap-driver.sh

TESTS = foo.scm bar.scm baz.scm
EXTRA_DIST = Makefile.dist $(TESTS)

