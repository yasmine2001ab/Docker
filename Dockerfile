FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apt-util# Utilisez l'image Debian comme base
FROM debian

# Mettez à jour les packages et installez les mises à jour
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

# Configurez l'entry point pour afficher "hello world"
ENTRYPOINT ["echo", "hello world"]

