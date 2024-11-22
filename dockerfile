FROM python:3.11-slim

ENV PYTHONBUFFERED=1

WORKDIR /test1

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]