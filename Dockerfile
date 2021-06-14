FROM node:14

USER root
RUN useradd -ms /bin/bash  redhat

RUN mkdir -p /home/redhat/soapproval
RUN pwd
RUN cd /home/redhat/soapproval

ADD . /home/redhat/soapproval

#RUN useradd -ms /bin/bash  redhat

RUN chown -R redhat /home/redhat

USER redhat

#RUN npm set @sap:registry=https://npm.sap.com

RUN pwd
RUN ls
RUN cd /home/redhat/soapproval
RUN ls

RUN cd /home/redhat/soapproval && \ 
npm install

EXPOSE 8080

CMD ["npm","start"]
