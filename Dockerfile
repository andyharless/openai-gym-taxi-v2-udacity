FROM python:3.6

RUN pip install numpy==1.15
RUN pip install gym==0.11

COPY ./*.py /usr/src/
WORKDIR /usr/src

CMD ["python", "main.py"]
