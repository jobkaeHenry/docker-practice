# Node 18 이미지를 받아오고
FROM node:18

# 작업 디렉토리는 현재 폴더
WORKDIR /

# (1째 인자)package.json을 (2째인자) 컨테이너 내부의 루트폴더로 복사된다 
# 도커 이미지는 상단부터 순차적으로 레이어를 쌓아나가고, 각 과정은 캐싱해놓기 때문에 package.json이 바뀜을 감지할 때만 module설치를 실행하기위해
COPY package.json .

RUN yarn

COPY . .

# 명시적으로 포트를 선언

EXPOSE 3000
# CMD 를 지정하지 않을 경우, 베이스 이미지가 실행됨
CMD ["node","index.js"]

# 이후 작업
# docker build . 를 통해 이미지를 빌드함
# 이후 알려준 이미지 id를 복사,
# docker run -p 3000:3000 이미지 id 로 실행
