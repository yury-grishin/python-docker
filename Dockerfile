FROM python:3.10.4

LABEL author="Yury Grishin"

RUN ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

WORKDIR /u01/app

# COPY requirements.txt requirements.txt
# RUN python -m pip install -r requirements.txt

COPY . .
ENTRYPOINT ["python", "main.py"]