FROM ubuntu:latest
WORKDIR /install/
RUN apt-get update && \
apt-get install -y npm git && \
npm install -g grunt-cli && \ 
git clone https://github.com/gchq/CyberChef && \
cd CyberChef && \
npm install
EXPOSE 8080/tcp
WORKDIR /install/CyberChef
ENTRYPOINT ["grunt"]
CMD ["dev"]

