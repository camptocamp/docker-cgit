FROM tianon/apache2

RUN apt-get update \
  && apt-get install -y cgit \
  && rm -rf /var/lib/apt/lists/*

RUN a2enmod cgi

RUN echo scan-path=/srv >> /etc/cgitrc
RUN echo virtual-root=/cgit/ >> /etc/cgitrc
