FROM python:3.8-alpine
WORKDIR /code
RUN pip3 install flask
RUN pip3 install redis
COPY . /code
CMD ["python", "app.py"]
