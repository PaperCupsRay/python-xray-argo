FROM ghcr.io/eooce/python:latest

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apk update && apk --no-cache add openssl bash curl &&\
    chmod +x app.py &&\
    pip install -r requirements.txt
    
CMD ["python", "app.py"]
