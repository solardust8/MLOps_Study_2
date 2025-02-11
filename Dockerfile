FROM ubuntu:22.04

RUN apt-get update
RUN apt-get upgrade -y
RUN echo "y" | apt-get install pip

WORKDIR /app

COPY . /app/

RUN echo "y" | pip install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "src.run:app", "--host", "0.0.0.0", "--port", "8000"]
