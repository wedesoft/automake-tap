AC_INIT([GNU automake-tap], [1.0], [jan@wedesoft.de])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_CONFIG_FILES([Makefile])
AC_REQUIRE_AUX_FILE([tap-driver.sh])
PKG_PROG_PKG_CONFIG
PKG_CHECK_MODULES([GUILE], [guile-2.0])
GUILE_PROGS
LT_INIT
AC_PROG_AWK
AC_OUTPUT
