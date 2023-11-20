FROM n8nio/n8n:latest
# USER root
# RUN apk add --update python3 py3-pip make npm
RUN ls -la /home/
RUN ls -la /home/node/
RUN npm config set registry http://52.28.51.44:4873/
#RUN cd ~/.n8n/ && mkdir nodes && cd nodes && npm install @telepilotco/n8n-nodes-telepilot
RUN ls -la ~/.n8n/nodes/

ENV DEBUG=tdl,telepilot-cred,telepilot-node,telepilot-trigger,telepilot-cm
ENV EXECUTIONS_PROCESS=main
ENV N8N_LOG_LEVEL=debug
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# USER node
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
