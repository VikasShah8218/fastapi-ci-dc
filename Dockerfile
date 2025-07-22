FROM python:3.10-slim

WORKDIR /

COPY . /

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
# CMD ["uvicorn", "main:app"]


# docker build -t fastapi-cicd .
# docker run -d -p 8000:8000 fastapi-cicd

# docker tag fastapi-cicd mrshah8218/fastapi-cicd:latest
# docker push mrshah8218/fastapi-cicd:latest
# docker run -d -p 8000:8000 mrshah8218/fastapi-cicd:latest
