FROM python:3.7.3-stretch

WORKDIR /app

COPY . .

RUN pip install --upgrade pip &&\
     pip3 install -r requirements.txt

# hadolint ignore=DL3013
RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
          chmod +x /bin/hadolint

EXPOSE 80

ENV FLASK_APP=/app/app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]