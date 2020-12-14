FROM python:3

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY tarc-final-c77501e1c46d.json ./
COPY script.sh ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x script.sh && ./script.sh

CMD [ "python", "./kubernets.py" ]

EXPOSE 8082
