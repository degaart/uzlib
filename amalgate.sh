#!/bin/sh

cat \
    src/{tinflate.c,tinfgzip.c,tinfzlib.c,adler32.c,crc32.c,defl_static.c,genlz77.c} |
    sed "s/#include \".*/#include \"uzlib.h\"/g" > uzlib.c
cat \
    src/{defl_static.h,uzlib_conf.h,tinf_compat.h,tinf.h,uzlib.h} |
    sed "s/#include \".*//g" > uzlib.h

