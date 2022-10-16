FROM cm2network/steamcmd:latest

USER root

RUN mkdir -p /game \
 && chown steam:steam /game

USER steam

RUN mkdir /game/saves \
 && mkdir /game/config

COPY --chown=steam:steam run.sh /home/steam/
COPY --chown=steam:steam config/*.ini  /home/steam/config/

EXPOSE 7777/udp 15000/udp 15777/udp

ENTRYPOINT [ "/home/steam/run.sh" ]
