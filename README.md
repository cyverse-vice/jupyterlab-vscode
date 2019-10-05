# Jupyterlab with VS Code
Build based from https://github.com/betatim/vscode-binder by Tim Head (Thank you, Tim!)

Updated for use with Docker and CyVerse VICE

To test the container locally:

```
docker pull cyversevice/jupyterlab-vscode

docker run -it --rm -v $PWD:/app --workdir /app -p 8888:8888 -e REDIRECT_URL=http://localhost:8888 cyversevice/jupyterlab-vscode:latest
```
Open the container locally or on your VM with the appropriate IP instead of `localhost`
