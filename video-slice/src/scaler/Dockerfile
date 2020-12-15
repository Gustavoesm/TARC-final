FROM python:3

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY tarc-trabalho-a7559699757c.json ./
COPY increase.sh ./
COPY decrease.sh ./
COPY script.sh ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x increase.sh && chmod +x decrease.sh

RUN chmod +x script.sh && ./script.sh

CMD [ "python", "./kubernets.py" ]

EXPOSE 8082
