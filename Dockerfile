#
#
#


FROM sequenceiq/hadoop-docker:2.5.2
MAINTAINER Ivan Pedrazas

RUN curl -LO http://mirror.vorboss.net/apache/pig/pig-0.16.0/pig-0.16.0.tar.gz
RUN tar xzf pig-0.16.0.tar.gz

ENV PATH $PATH:/pig-0.16.0/bin:/usr/local/hadoop-2.5.2/bin:/usr/local/hadoop-2.5.2/sbin

RUN mr-jobhistory-daemon.sh start historyserver