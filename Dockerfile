FROM alephium/alephium:latest
RUN echo "alephium.api.key = $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 48 | head -n 1)" >> /alephium-home/.alephium/user.conf
CMD bash