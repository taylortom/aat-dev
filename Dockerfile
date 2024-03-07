FROM node:20
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --omit=dev
COPY . .

# Start and enable SSH
RUN apt-get update \
    && apt-get install -y --no-install-recommends dialog \
    && apt-get install -y --no-install-recommends openssh-server \
    && echo "root:Docker!" | chpasswd \
    && chmod u+x ./entrypoint.sh
COPY sshd_config /etc/ssh/
EXPOSE 8000 2222
ENTRYPOINT [ "./entrypoint.sh" ] 
