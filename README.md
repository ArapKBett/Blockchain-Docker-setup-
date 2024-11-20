Install `Docker` here https://docs.docker.com/get-started/get-docker/

Navigate to the directory containing your `Dockerfile` and build the Docker image.
`docker build -t ethereum-node .`

Run the `Docker` container using the image you just built.
`docker run -d --name ethereum-node -p 8545:8545 -p 8546:8546 -p 30303:30303 -p 30303:30303/udp ethereum-node`

Verify that your Ethereum node is running by checking the logs.
`docker logs ethereum-node`

Interact with your Ethereum node using tools like `web3.js` or `ethers.js` in your applications. For example, you can use `curl` to check if the node is responding:
`curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' http://localhost:8545`
