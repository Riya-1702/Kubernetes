FROM ubuntu:14.04
RUN apt update && apt install python3 python3-pip && pip3 install flask
COPY app.py /app.py
CMD ["python3","/app.py"]
