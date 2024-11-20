# Use the official Ethereum image from Docker Hub
FROM ethereum/client-go:stable

# Create a directory for the Ethereum data
RUN mkdir -p /root/.ethereum

# Expose the necessary ports
EXPOSE 8545 8546 30303 30303/udp

# Start the Ethereum node
CMD ["geth", "--http", "--http.addr", "0.0.0.0", "--http.port", "8545", "--http.corsdomain", "*", "--http.api", "eth,net,web3", "--syncmode", "fast", "--cache", "2048"]
