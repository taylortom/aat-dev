FROM node:20
WORKDIR /home/adapt

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
EXPOSE 2222 3000 8000
ENTRYPOINT [ "./entrypoint.sh" ] 
