FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-pip
RUN pip3 install flask

COPY app.py /app.py

CMD ["python3", "/app.py"]

