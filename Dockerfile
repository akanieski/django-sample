FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /bookmaster
WORKDIR /bookmaster

ADD . /bookmaster/

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT python manage.py runserver 0.0.0.0:8080