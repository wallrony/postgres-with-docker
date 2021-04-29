FROM postgres
LABEL AUTHOR="RONY"

WORKDIR /database

ENV POSTGRES_PASSWORD=123456

EXPOSE 5432

ADD ./files/init /docker-entrypoint-initdb.d