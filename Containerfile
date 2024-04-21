FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN moudroandela create-db
RUN moudroandela populate-db
RUN moudroandela add-user -u admin -p admin
EXPOSE 5000
CMD ["moudroandela", "run"]
