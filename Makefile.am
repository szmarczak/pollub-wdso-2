#ACLOCAL_AMFLAGS = -I m4

lib_LTLIBRARIES = libarea.la libvolume.la
libarea_la_SOURCES = src/area.c
libvolume_la_SOURCES = src/volume.c

include_HEADERS = include/area.h include/volume.h

AM_CPPFLAGS = -I include $(WDSO2_CPPFLAGS)

bin_PROGRAMS = wdso2
wdso2_SOURCES = src/main.c
wdso2_LDADD = libarea.la libvolume.la
wdso2_DEPENDENCIES = libarea.la libvolume.la
