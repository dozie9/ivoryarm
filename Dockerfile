FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /django

COPY requirements/base.txt requirements/base.txt
COPY requirements/local.txt requirements/local.txt
RUN pip3 install -r requirements/local.txt
#
#COPY . .
#
#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
