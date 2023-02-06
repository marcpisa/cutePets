FROM python:3.8-slim-buster

RUN apt-get update -y 
RUN apt-get install git -y

RUN git clone https://github.com/marcpisa/cutePets

ADD . /cutePets
WORKDIR /cutePets

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
