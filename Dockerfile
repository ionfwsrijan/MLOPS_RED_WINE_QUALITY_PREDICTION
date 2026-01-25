FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Expose port (Render will assign the actual port)
EXPOSE 8080

# Use Gunicorn as production WSGI server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]