FROM python:3.8
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip3 install update && pip3 install -r requirements.txt 
COPY . .
CMD ["python3", "app.py"]