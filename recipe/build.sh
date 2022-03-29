#!/bin/sh

export HAS_NETCDF4=1
export HAS_HDFEOS=1
export HAS_HDFEOS5=1
export HAS_GDAL=1
export HAS_GRIB2=1
export NETCDF_PREFIX="${PREFIX}"
export F2CLIBS=gfortran
export HAS_SZIP=0
export HAS_HDF4=1
export HAS_HDF5=1
export HAS_GDAL=1

export CXXFLAGS="-fPIC ${CXXFLAGS} -fcommon"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"
export CPPFLAGS="-I${PREFIX}/include $CPPFLAGS"
export CFLAGS="-D_BSD_SOURCE -D_XOPEN_SOURCE -I${PREFIX}/include ${CFLAGS} -fcommon"

$PYTHON -m pip install . --no-deps -vv
