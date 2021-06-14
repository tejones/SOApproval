FROM alpine:3.11

USER root
#RUN useradd -ms /bin/bash  redhat
RUN adduser -D -u 1001 redhat

RUN mkdir -p /home/redhat/soapproval
RUN cd /home/redhat/soapproval

ADD . /home/redhat/soapproval

RUN chown -R redhat /home/redhat

USER redhat

RUN cd /home/redhat/soapproval && \ 
npm install

EXPOSE 8080

CMD ["npm","start"]
