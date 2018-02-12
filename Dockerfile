# 2018 QChain Inc. All Rights Reserved.
# License: Apache v2, see LICENSE.

FROM amazonlinux:latest

# Configuration options
ARG python_runtime=36
ARG out_dir=/var/task
ARG numpy_home=https://api.github.com/repos/numpy/numpy

# Update and install compiler dependencies
RUN yum update -y
RUN yum upgrade -y
RUN yum install -y gcc gmp python${python_runtime}-devel

# Copy required scripts into the Docker image
COPY host.sh /build

# Set environment variables and entry point
ENV PYTHON_RUNTIME ${python_runtime}
ENV OUTDIR ${out_dir}
CMD /build ${PYTHON_RUNTIME} ${OUTDIR}
