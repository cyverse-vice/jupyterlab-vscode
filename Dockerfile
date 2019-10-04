FROM cyversevice/jupyterlab-base:latest

# Enable the proxy extension in notebook and lab
#RUN jupyter serverextension enable --py jupyter_server_proxy && \
#    jupyter labextension install jupyterlab-server-proxy && \
#    jupyter lab build

# Download and install VS Code server
RUN wget -q -O code-server.tar.gz https://github.com/cdr/code-server/releases/download/2.1478-vsc1.38.1/code-server2.1478-vsc1.38.1-linux-x86_64.tar.gz && \
    mkdir -p ~/.local/bin && \
    tar -xvf code-server.tar.gz -C ~/.local/bin --strip-components=1 && \
    rm -rf code-server.tar.gz

RUN pip install numpy && \
    jupyter labextension install jupyter-server-proxy && \
    jupyter labextension install jupyterlab-server-proxy && \
    jupyter lab build
    
# Install the VS code proxy
RUN pip install -e .
