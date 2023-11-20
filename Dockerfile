FROM n8nio/n8n:latest
# USER root
# RUN apk add --update python3 py3-pip make npm
RUN ls -la /home/
RUN ls -la /home/node/
RUN npm config set registry http://0.0.0.0:4873/
RUN cd ~/.n8n/ && mkdir nodes && cd nodes && npm install @telepilotco/n8n-nodes-telepilot
RUN ls -la ~/.n8n/nodes/
# USER node
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
