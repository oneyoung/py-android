PYDIR=/data/python

TEMP=${PYDIR}/tmp/

mkdir -p $TEMP
export PYTHON_EGG_CACHE=$TEMP
export PYTHONPATH=${PYDIR}/lib/python2.6:${PYDIR}/lib/python2.6/lib-dynload/
export PYTHONHOME=${PYDIR}
export LD_LIBRARY_PATH=${PYDIR}/lib/:$LD_LIBRARY_PATH

${PYDIR}/bin/python "$@"
