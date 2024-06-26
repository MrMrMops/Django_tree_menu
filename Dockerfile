FROM python:3.11-slim
WORKDIR /app
COPY docker/requirements.txt .
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt --no-cache-dir
COPY tree_menu .
RUN chmod +x start.sh
