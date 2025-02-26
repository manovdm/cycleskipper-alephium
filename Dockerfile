FROM alephium/alephium:latest
WORKDIR /alephium-home

# Define build-time variable
ARG API_KEY_ARG

# Set environment variable using the build-time variable
ENV API_KEY=${API_KEY_ARG}

# Check for required environment variables
RUN test -n "$API_KEY" || (echo "API_KEY is not set" && exit 1)

USER root

# Install required packages
#RUN apk add --no-cache vim \
RUN #sudo chown -R $(whoami) .alephium
RUN echo "alephium.api.key = ${API_KEY}" >> .alephium/user.conf


# Install required packages
RUN curl -L https://github.com/alephium/gpu-miner/raw/master/get-miner.sh > get-miner.sh
RUN chmod +x get-miner.sh


#CMD /bin/bash
ENTRYPOINT ["/bin/bash"]