# Jupyterlab with VS Code
Build based from https://github.com/betatim/vscode-binder

Updated for use with Docker and CyVerse VICE

To test the container locally:

```
docker run -it --rm -v /$HOME:/app --workdir /app -p 8888:8888 -e REDIRECT_URL=http://localhost:8888 cyversevice/jupyterlab-vscode:latest
```
