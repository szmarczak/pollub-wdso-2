#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([wdso2], [2.0], [example@example.com])
AM_INIT_AUTOMAKE([subdir-objects])
AC_CONFIG_SRCDIR([src])
AC_CONFIG_MACRO_DIRS([m4])

WDSO2_CPPFLAGS="-I include"
AC_SUBST(WDSO2_CPPFLAGS)

# Checks for programs.
AC_PROG_CC

LT_INIT

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([inttypes.h stdlib.h string.h])
AC_CONFIG_FILES([Makefile])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_STRTOD
AC_CHECK_FUNCS([strerror])

AC_OUTPUT
