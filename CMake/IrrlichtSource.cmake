# The ZLIB license
#
# Copyright (c) 2015 André Netzeband
# Copyright (c) 2017 Fabien Péan
#
# This software is provided 'as-is', without any express or implied
# warranty. In no event will the authors be held liable for any damages
# arising from the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgement in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
#

function(glob_sources result folder)
    file(GLOB res
    "${folder}/*.c"
    "${folder}/*.cpp"
    "${folder}/*.cc")
    set(${result} ${res} PARENT_SCOPE)
endfunction()

function(glob_headers result folder)
    file(GLOB res
    "${folder}/*.h"
    "${folder}/*.hpp")
    set(${result} ${res} PARENT_SCOPE)
endfunction()

glob_headers(IRRLICHT_PUBLIC_HEADER_FILES include)

glob_headers(IRRLICHT_PRIVATE_HEADER_FILES source/Irrlicht/)

glob_sources(IRRLICHT_SOURCE_FILES source/Irrlicht/)

SET (ZLIB_HEADER_FILES
source/Irrlicht/zlib/crc32.h
source/Irrlicht/zlib/deflate.h
source/Irrlicht/zlib/gzguts.h
source/Irrlicht/zlib/inffast.h
source/Irrlicht/zlib/inffixed.h
source/Irrlicht/zlib/inflate.h
source/Irrlicht/zlib/inftrees.h
source/Irrlicht/zlib/trees.h
source/Irrlicht/zlib/zconf.h
source/Irrlicht/zlib/zlib.h
source/Irrlicht/zlib/zutil.h
  )

SET (ZLIB_SOURCE_FILES
source/Irrlicht/zlib/adler32.c
source/Irrlicht/zlib/compress.c
source/Irrlicht/zlib/crc32.c
source/Irrlicht/zlib/deflate.c
source/Irrlicht/zlib/inffast.c
source/Irrlicht/zlib/inflate.c
source/Irrlicht/zlib/inftrees.c
source/Irrlicht/zlib/trees.c
source/Irrlicht/zlib/uncompr.c
source/Irrlicht/zlib/zutil.c
  )

SET (JPEGLIB_HEADER_FILES
source/Irrlicht/jpeglib/cderror.h
source/Irrlicht/jpeglib/cdjpeg.h
source/Irrlicht/jpeglib/jconfig.h
source/Irrlicht/jpeglib/jdct.h
source/Irrlicht/jpeglib/jerror.h
source/Irrlicht/jpeglib/jinclude.h
source/Irrlicht/jpeglib/jmemsys.h
source/Irrlicht/jpeglib/jmorecfg.h
source/Irrlicht/jpeglib/jpegint.h
source/Irrlicht/jpeglib/jpeglib.h
source/Irrlicht/jpeglib/jversion.h
source/Irrlicht/jpeglib/transupp.h
  )

SET (JPEGLIB_SOURCE_FILES
source/Irrlicht/jpeglib/jcapimin.c
source/Irrlicht/jpeglib/jcapistd.c
source/Irrlicht/jpeglib/jccoefct.c
source/Irrlicht/jpeglib/jccolor.c
source/Irrlicht/jpeglib/jcdctmgr.c
source/Irrlicht/jpeglib/jchuff.c
source/Irrlicht/jpeglib/jcinit.c
source/Irrlicht/jpeglib/jcmainct.c
source/Irrlicht/jpeglib/jcmarker.c
source/Irrlicht/jpeglib/jcmaster.c
source/Irrlicht/jpeglib/jcomapi.c
source/Irrlicht/jpeglib/jcparam.c
source/Irrlicht/jpeglib/jcprepct.c
source/Irrlicht/jpeglib/jcsample.c
source/Irrlicht/jpeglib/jctrans.c
source/Irrlicht/jpeglib/jdapimin.c
source/Irrlicht/jpeglib/jdapistd.c
source/Irrlicht/jpeglib/jdatadst.c
source/Irrlicht/jpeglib/jdatasrc.c
source/Irrlicht/jpeglib/jdcoefct.c
source/Irrlicht/jpeglib/jdcolor.c
source/Irrlicht/jpeglib/jddctmgr.c
source/Irrlicht/jpeglib/jdhuff.c
source/Irrlicht/jpeglib/jdinput.c
source/Irrlicht/jpeglib/jdmainct.c
source/Irrlicht/jpeglib/jdmarker.c
source/Irrlicht/jpeglib/jdmaster.c
source/Irrlicht/jpeglib/jdmerge.c
source/Irrlicht/jpeglib/jdpostct.c
source/Irrlicht/jpeglib/jdsample.c
source/Irrlicht/jpeglib/jdtrans.c
source/Irrlicht/jpeglib/jerror.c
source/Irrlicht/jpeglib/jfdctflt.c
source/Irrlicht/jpeglib/jfdctfst.c
source/Irrlicht/jpeglib/jfdctint.c
source/Irrlicht/jpeglib/jidctflt.c
source/Irrlicht/jpeglib/jidctfst.c
source/Irrlicht/jpeglib/jidctint.c
source/Irrlicht/jpeglib/jmemmgr.c
source/Irrlicht/jpeglib/jmemnobs.c
source/Irrlicht/jpeglib/jquant1.c
source/Irrlicht/jpeglib/jquant2.c
source/Irrlicht/jpeglib/jutils.c
source/Irrlicht/jpeglib/jcarith.c
source/Irrlicht/jpeglib/jdarith.c
source/Irrlicht/jpeglib/jaricom.c
  )

SET (LIBPNG_HEADER_FILES
source/Irrlicht/libpng/png.h
source/Irrlicht/libpng/pngconf.h
source/Irrlicht/libpng/pngdebug.h
source/Irrlicht/libpng/pnginfo.h
source/Irrlicht/libpng/pnglibconf.h
source/Irrlicht/libpng/pngpriv.h
source/Irrlicht/libpng/pngstruct.h
  )

SET (LIBPNG_SOURCE_FILES
source/Irrlicht/libpng/png.c
source/Irrlicht/libpng/pngerror.c
source/Irrlicht/libpng/pngget.c
source/Irrlicht/libpng/pngmem.c
source/Irrlicht/libpng/pngpread.c
source/Irrlicht/libpng/pngread.c
source/Irrlicht/libpng/pngrio.c
source/Irrlicht/libpng/pngrtran.c
source/Irrlicht/libpng/pngrutil.c
source/Irrlicht/libpng/pngset.c
source/Irrlicht/libpng/pngtrans.c
source/Irrlicht/libpng/pngwio.c
source/Irrlicht/libpng/pngwrite.c
source/Irrlicht/libpng/pngwtran.c
source/Irrlicht/libpng/pngwutil.c
  )

SET (LIBAESGM_HEADER_FILES
source/Irrlicht/aesGladman/aes.h
source/Irrlicht/aesGladman/aesopt.h
source/Irrlicht/aesGladman/fileenc.h
source/Irrlicht/aesGladman/hmac.h
source/Irrlicht/aesGladman/prng.h
source/Irrlicht/aesGladman/pwd2key.h
source/Irrlicht/aesGladman/sha1.h
source/Irrlicht/aesGladman/sha2.h
  )

SET (LIBAESGM_SOURCE_FILES
source/Irrlicht/aesGladman/aescrypt.cpp
source/Irrlicht/aesGladman/aeskey.cpp
source/Irrlicht/aesGladman/aestab.cpp
source/Irrlicht/aesGladman/fileenc.cpp
source/Irrlicht/aesGladman/hmac.cpp
source/Irrlicht/aesGladman/prng.cpp
source/Irrlicht/aesGladman/pwd2key.cpp
source/Irrlicht/aesGladman/sha1.cpp
source/Irrlicht/aesGladman/sha2.cpp
  )

SET (BZIP2_HEADER_FILES
source/Irrlicht/bzip2/bzlib.h
source/Irrlicht/bzip2/bzlib_private.h
  )

SET (BZIP2_SOURCE_FILES
source/Irrlicht/bzip2/blocksort.c
source/Irrlicht/bzip2/huffman.c
source/Irrlicht/bzip2/crctable.c
source/Irrlicht/bzip2/randtable.c
source/Irrlicht/bzip2/bzcompress.c
source/Irrlicht/bzip2/decompress.c
source/Irrlicht/bzip2/bzlib.c
  )

SET (LZMA_HEADER_FILES
source/Irrlicht/lzma/LzmaDec.h
source/Irrlicht/lzma/Types.h
  )

SET (LZMA_SOURCE_FILES
source/Irrlicht/lzma/LzmaDec.c
  )

SET (ALL_SOURCE_FILES
${IRRLICHT_SOURCE_FILES}
${ZLIB_SOURCE_FILES}
${JPEGLIB_SOURCE_FILES}
${LIBPNG_SOURCE_FILES}
${LIBAESGM_SOURCE_FILES}
${BZIP2_SOURCE_FILES}
${LZMA_SOURCE_FILES}
  )

SET (ALL_HEADER_FILES
${IRRLICHT_PUBLIC_HEADER_FILES}
${IRRLICHT_PRIVATE_HEADER_FILES}
${ZLIB_HEADER_FILES}
${JPEGLIB_HEADER_FILES}
${LIBPNG_HEADER_FILES}
${LIBAESGM_HEADER_FILES}
${BZIP2_HEADER_FILES}
${LZMA_HEADER_FILES}
  )
