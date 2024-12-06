# 1. 기본 Node.js 이미지를 사용
FROM node:16

# 2. 작업 디렉토리 설정 (컨테이너 내부)
WORKDIR /usr/src/app

# 3. 패키지 파일 복사
COPY package*.json ./

# 4. 종속성 설치
RUN yarn add

# 5. 빌드된 파일을 컨테이너에 복사
COPY dist ./dist

# 6. 애플리케이션 실행 명령 (필요한 경우)
CMD ["node", "dist/index.js"]

# 7. 외부에서 접속할 포트 지정
EXPOSE 3000
