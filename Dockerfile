FROM python:3.9.1-slim-buster

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=hello.py

CMD ["sh", "-c", "flask run --host=0.0.0.0 --port=$PORT"]
