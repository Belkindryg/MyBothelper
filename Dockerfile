FROM python:3.9

COPY app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --upgrade pip && pip install -r /app/requirements.txt 

COPY app /app

ENV PYTHONPATH=/app/libs

CMD ["python","-u","main.py"]
