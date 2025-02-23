FROM python:3


WORKDIR /usr/src/app
COPY requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt 
COPY . .
CMD ["gunicorn", "-c", "app.py", "--bind", "0.0.0.0:5000", "app:app"]