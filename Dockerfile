FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip --no-cache-dir install -r requirements.txt
ADD . /code/
CMD [ "python", "/code/todo/manage.py", "runserver", "0.0.0.0:8000" ]
