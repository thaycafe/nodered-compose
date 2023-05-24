FROM nodered/node-red:latest

RUN npm install node-red-contrib-opcua
ENV http_proxy="http://172.17.0.1:3130"
ENV https_proxy="http://172.17.0.1:3130"
ENV no_proxy=127.0.0.1,localhost,petrobras.com.br,petrobras.biz,172.17.0.1

USER node-red

CMD ["npm", "start"]