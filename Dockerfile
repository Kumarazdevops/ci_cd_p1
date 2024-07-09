FROM node:14
WORKDIR /app
COPY . .
RUN npm install
RUN ./run-bash.sh .
CMD ["npm", "start", "bash.sh"]
