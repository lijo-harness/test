From harness/delegate-immutable:23.03.78904

RUN apk update && apk add --no-cache nmap && \
    apk update && \
    apk add --no-cache \
      chromium \
      harfbuzz \
      "freetype>2.8" \
      ttf-freefont \
      nss
 
COPY ./payment-service/target/*.jar payment-service.jar

EXPOSE 8080

CMD ["java","-jar","payment-service.jar"]  
