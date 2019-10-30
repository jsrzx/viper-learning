FROM alpine
LABEL EMAIL="1141591465@qq.com"
LABEL AUTHOR="dalongrong"
WORKDIR /app
COPY build/linux/yaml /app/yaml
RUN chmod +x /app/yaml
CMD [ "./yaml" ]