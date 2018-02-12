#!/bin/bash
# 2018 QChain Inc. All Rights Reserved.
# License: Apache v2, see LICENSE.
#
#   host [runtime] [outdir] -- Build NumPy from within container.
#
#   Opts:
#       [runtime]    Python runtime (ex. "36").
#       [outdir]     Output directory (ex. "/var/task").
#

RUNTIME=$1
OUTDIR=$2
PYTHON=python$RUNTIME

# FUNCTIONS
# ---------

function build_cryptodome()
{
    ${PYTHON} -m pip install pycryptodome -t "$OUTDIR"
}

# CALL
# ----

build_cryptodome
