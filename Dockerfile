FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

# Force rebuild
RUN echo "rebuild-v2"

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]