FROM python:3.12.5-alpine3.20

WORKDIR twoge-4/
COPY . .
RUN pip install -r requirements.txt
# RUN pip install flask
# RUN pip install python-dotenv


EXPOSE 80

CMD ["python", "app.py"]