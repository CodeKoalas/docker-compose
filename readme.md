# Docker Compose Starter for CK

This is the docker-compose config and tools we use at Code Koalas

## Steps

1. Run `./setupdev.sh` which should start up a local dev server and get the latest changes.
2. Take the `.yaml` file you need for your project, clone it into your project and change the names to match the your project.
3. From your new project directory run `docker-composer -f NAMEOFFILE.yaml up -d`
