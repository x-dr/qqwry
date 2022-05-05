# chmod +x *.sh


# docker build -t my-perl-app .

docker run -id -v $PWD/outpath:/usr/src/app/outpath --name my-running-app gindex/perl:latest

sleep 120

docker stop my-running-app

sleep 10