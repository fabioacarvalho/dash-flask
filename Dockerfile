FROM python:3.12-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . /app/

RUN pip install -r requirements.txt

EXPOSE 8050

CMD ["python", "app.py" ]