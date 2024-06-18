FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git

RUN git clone https://github.com/npat-efault/picocom.git


RUN sed -i -E 's/(^CPPFLAGS.*VER.*)$/\1 -static/' /opt/picocom/Makefile
RUN sed -i -E 's/(^LDFLAGS .*)$/\1 -static/'      /opt/picocom/Makefile
RUN sed -i -E 's/(^CFLAGS .*)$/\1 -static/'       /opt/picocom/Makefile

RUN cd /opt/picocom; make -j8

RUN strip /opt/picocom/picocom


