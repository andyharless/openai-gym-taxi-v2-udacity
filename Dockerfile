FROM python:3.6

RUN pip install numpy==1.12
RUN pip install gym==0.9
RUN pip install scipy==0.19

COPY ./*.py /usr/src/
WORKDIR /usr/src

CMD ["python", "main.py"]
