FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN testing_flask create-db
RUN testing_flask populate-db
RUN testing_flask add-user -u admin -p admin
EXPOSE 5000
CMD ["testing_flask", "run"]
