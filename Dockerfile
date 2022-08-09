FROM python:3.10-alpine

WORKDIR /app

RUN pip3 install flask

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
