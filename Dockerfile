FROM node:lts-alpine@sha256:b2da3316acdc2bec442190a1fe10dc094e7ba4121d029cb32075ff59bb27390a

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
