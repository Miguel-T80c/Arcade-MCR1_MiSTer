FROM theypsilon/quartus-lite-c5:17.1.docker0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Arcade-MCR1.qpf
CMD cat /project/output_files/Arcade-MCR1.rbf
