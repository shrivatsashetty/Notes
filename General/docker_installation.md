# Installing Docker Desktop on Ubuntu 22.04

1. First we need to Download the Debian file from the  official docker website
	-  Visit this link :  [Docker Desktop for Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)
	- Click on the option, **DEB PACKAGE** which will start the download for you

2.  In the mean time we must also have to download the **Docker Engine** which is required for the docker desktop to function properly
	- Visit this link for [Docker Engine](https://docs.docker.com/engine/install/debian/)
	- Follow all the steps listed under installation methods or you can also copy-paste these commands below
	-  We have  to set up the apt repositories first using the following commands
	
	> sudo apt-get update
	
	>  sudo apt-get install ca-certificates curl gnupg
	
	> sudo install -m 0755 -d /etc/apt/keyrings
	
	> curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
	
	>sudo chmod a+r /etc/apt/keyrings/docker.gpg

	> echo \\
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	- Now since we have set up the repositories, we now proceed with the actaual installation
	- Use the following commands for installation
	> sudo apt-get update
	
	> sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	- Now check whether the docker engine is installed successfully by running the hello-world image
	> sudo docker run hello-world
	- This command downloads a test image and runs it in a container. When the container runs, it prints a confirmation message and exits.
3. Now we have to install the Docker Desktop Debian package file which   we have downloaded at the beginning using the  following steps
	- First move to the appropriate  directory  where the docker debian file is located, usually it will be in the Downloads directory but check once for the file then use the following steps
> cd Downloads/

> sudo dpkg -i docker-desktop-4.21.1-amd64.deb 

-  Now sometimes it might happen the you might get some error during the error saying that there are some unmet dependencies then run the following command
> sudo apt install -f

 > sudo dpkg -i docker-desktop-4.21.1-amd64.deb 

**Congrats you have successfully installed docker on your computer**

## Sample Screenshots
![update system](sys-update.png)  

![install-curl](instal-curl.png)  

![setting up](echo.png)  

![runninhg image](docker-hello.png)

	
## Thank you