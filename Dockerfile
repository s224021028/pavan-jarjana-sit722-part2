# Dockerfile for book_catalog microservice
FROM python:3.11.9-slim
WORKDIR /app
COPY book_catalog/ .
RUN pip install -r requirements.txt
EXPOSE 8000
ENV DATABASE_URL="postgresql://postgres_onc2_user:L9E98slI5cPR8aamlMXBy8Fe5gvL7i1l@dpg-cr5uotij1k6c739966sg-a.oregon-postgres.render.com/postgres_onc2"
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]