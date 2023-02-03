#Red Pepper IT
## Installation
### Pre-requisites (INSTALL THESE)
- Ensure virtualization is enabled in your system BIOS
- Docker Desktop (https://www.docker.com/products/docker-desktop/)
- Git for Windows (https://gitforwindows.org/)
- WSL or Hyper-V enabled in Windows Features (WSL preferred)

### Setting up the environment

1. Make a folder where you want the project to live. 
2. cd into that folder and run "git clone https://github.com/MatthewPinkston/docker-compose-lamp.git ."
3. Create a subfolder called www if it doesn't exist
4. cd into www directory inside of DOCKER-LAMP-COMPOSE project folder
5. run "git clone -b <branch name (ex. Team1_Staging)> https://github.com/MatthewPinkston/IT_Management.git ." (Notice the period at the end, this is necessary to extract the contents into the root folder rather than clone an extra folder.)
6. Rename the .env-dev file in the root directory to simply .env and place it inside the "www" folder.
7. cd .. (back up one directory)
8. Run the build.ps1 file (You can run it from the terminal, from your IDE, or by clicking on it in file explorer)
9. Check Docker-Desktop to confirm that all the containers were built and are running. 
10. After these steps are done, the user should be able to browse to the server (localhost:80).
11. Default login is Admin@Admin.com : admin
