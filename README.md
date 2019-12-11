# docker-compose-question2answer

This docker-compose solution is meant to be a simple Question2Answer solution with persistent storage on the host... just run `docker-compose up` after you configure your .env file!

# Installation

1. Configure the .env file to your custom values  
2. Run the init.sh to create the persistent storage location of ./var/lib/mysql
3. docker-compose up

If you want to change your persistent storage location, make sure you change it also in the docker-compose.yml!
