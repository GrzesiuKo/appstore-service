FROM python:3.8.1
ENV PYTHONUNBUFFERED 1

EXPOSE 8005

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./app

CMD [ "python", "./app/run.py" ]