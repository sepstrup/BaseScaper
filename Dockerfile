FROM selenium/standalone-firefox

RUN sudo apt-get update

RUN sudo apt-get install python3 -y
RUN sudo apt-get install python3-pip -y

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN sudo pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN sudo mkdir logs
RUN sudo chown seluser logs

RUN sudo mkdir output
RUN sudo chown seluser output
