FROM python:3.11
copy main.py /app/
copy requirements.txt /app/
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
WORKDIR /app
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","80"]