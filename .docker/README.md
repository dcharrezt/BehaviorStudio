## Docker installation

The docker installation guide is very can be found in this [link](https://docs.docker.com/get-docker/) which is well documented.

### For ubuntu

First remove older versions.

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Then setup the stable repository

```bash
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"    
```

Install the docker engine

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

Add your user to the docker's group to avoid using `sudo` for docker, you have to log out and log in to for this change to take effect.

```
sudo usermod -aG docker your-user
```

Test your installation

```bash
docker run hello-world
```

## Running Behavior Studio Containers


