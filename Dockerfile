FROM python:3
ADD . /app
WORKDIR /app
RUN pip install -U pipenv
RUN pipenv install --system
CMD [ "ls" ]
CMD [ "python", "manage.py", "runserver" ]

