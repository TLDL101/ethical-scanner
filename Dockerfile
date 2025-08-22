# Root-level Dockerfile (builds the FastAPI server from /server)
FROM python:3.11-slim
WORKDIR /app
COPY server/requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY server/app ./app
EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
- r server/requirements.txt
web: PYTHONPATH=server uvicorn app.main:app --host 0.0.0.0 --port $PORT

