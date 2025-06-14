FROM python:3.12-slim

ARG CHANNEL_ACCESS_TOKEN
ARG CHANNEL_SECRET

ENV CHANNEL_ACCESS_TOKEN=${CHANNEL_ACCESS_TOKEN}
ENV CHANNEL_SECRET=${CHANNEL_SECRET}

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
