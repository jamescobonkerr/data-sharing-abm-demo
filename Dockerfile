FROM python:3.6

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN useradd -m myuser
USER myuser

CMD [ "python", "odi-app.py" ]
