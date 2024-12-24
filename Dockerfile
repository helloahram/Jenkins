# 기본 이미지로 nginx 사용
FROM nginx:alpine

# 로컬에서 사용할 파일을 컨테이너의 /usr/share/nginx/html로 복사
COPY ./index.html /usr/share/nginx/html/index.html

# 포트 8090 을 오픈
EXPOSE 80
