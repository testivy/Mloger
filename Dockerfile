FROM docker.io/centos/python-38-centos7:latest
WORKDIR /home/mlogger
COPY front ./front
COPY server ./server
USER root
WORKDIR /home/mlogger/server
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
CMD ["python","app.py"]