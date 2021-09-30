#FROM mcr.microsoft.com/appsvc/staticappsclient:stable
FROM msswa.azurecr.io/kamesrao/jamstack:vnext

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "/entrypoint.sh"]
