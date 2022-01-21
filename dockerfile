FROM python:3.9-slim-buster

WORKDIR /app

COPY ["./app/app.py", "./app/NBA_logos.jpg", "requirements.txt", "/app/"]

RUN mv /app/app.py /app/basketball.py \
    && pip3 install --no-cache-dir -r requirements.txt

CMD streamlit run basketball.py --server.enableCORS=false --server.enableXsrfProtection=false

EXPOSE 8501