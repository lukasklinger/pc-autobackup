FROM python:2.7-alpine

# creating app dir
WORKDIR /usr/src/app

# copy files
COPY . .

# install twisted
RUN apk add alpine-sdk && pip install --upgrade setuptools && pip install Twisted

CMD [ "python", "/usr/src/app/pc_autobackup.py" ]
