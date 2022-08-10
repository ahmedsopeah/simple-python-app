FROM amd64/python:3

WORKDIR /app

RUN pip3 install flask

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
