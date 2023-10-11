# Node 18 이미지를 받아오고
FROM node:18

# 작업 디렉토리는 현재 폴더
WORKDIR /

# (1째 인자)현재 폴더의 모든이미지를 (2째인자) 컨테이너 내부의 루트폴더로 복사된다 
COPY . .

RUN yarn

# 명시적으로 포트를 선언

EXPOSE 3000
# CMD 를 지정하지 않을 경우, 베이스 이미지가 실행됨
CMD ["node","index.js"]

# 이후 작업
# docker build . 를 통해 이미지를 빌드함
# 이후 알려준 이미지 id를 복사,
# docker run -p 3000:3000 이미지 id 로 실행