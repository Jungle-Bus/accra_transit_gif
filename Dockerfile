FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y libfreetype6 libfreetype6-dev  \
                    libfontconfig1 libfontconfig1-dev \
                    libexpat1-dev zlib1g-dev libbz2-dev wget python3-pip libbz2-dev

RUN cd /tmp && \
    export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64" && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
    tar xvjf $PHANTOM_JS.tar.bz2 && \
    mv $PHANTOM_JS /usr/local/share && \
    chmod a+x /usr/local/share/$PHANTOM_JS/bin/phantomjs && \
    ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin


COPY transit_to_gif.py /transit_to_gif.py
COPY transit_to_gif_handlers.py /transit_to_gif_handlers.py
COPY liberation-fonts-ttf-1.07.5 /liberation-fonts-ttf-1.07.5
COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

VOLUME [ "/data" ]
WORKDIR /

CMD ["python3", "transit_to_gif.py"]
