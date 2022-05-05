FROM perl:latest

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app \
    && cpanm MaxMind::DB::Writer IP::QQWry::Decoded \
    && chmod +x *.sh \
    && mkdir -p /usr/src/app/outpath




# CMD [ "perl", "./qqwry2mmdb.pl","qqwry.dat" ]
ENTRYPOINT ["./entrypoint.sh"]