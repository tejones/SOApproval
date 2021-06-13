FROM FROM node:14

USER root

RUN mkdir -p /home/redhat/soapproval
ADD . /home/redhat/soapproval

RUN useradd -ms /bin/bash  redhat

RUN chown -R redhat /home/redhat/soapproval

USER redhat

#RUN npm set @sap:registry=https://npm.sap.com

RUN npm install

EXPOSE 8080

CMD ["npm","start"]
