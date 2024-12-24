# 기본 이미지로 nginx 사용
FROM nginx:alpine

# 로컬에서 사용할 파일을 컨테이너의 /usr/share/nginx/html로 복사
COPY ./index.html /usr/share/nginx/html/index.html

# nginx 설정 파일 수정
RUN sed -i 's/listen\s*8090;/listen 8090;/g' /etc/nginx/conf.d/default.conf

# 포트 8090 을 오픈
EXPOSE 8090

# nginx를 foreground에서 실행
CMD ["nginx", "-g", "daemon off;"]