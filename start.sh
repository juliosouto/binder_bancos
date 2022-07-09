#!/usr/bin/env bash

echo "iniciando o servidor jupyter, abra o navegador em http://localhost:8888 e use a senha supersenha"

repo2docker -p 8888:8888 \
            -v ./docker_vols/:$(echo ~)/local-home \
            https://github.com/juliosouto/binder_bancos.git \
            jupyter lab --ip 0.0.0.0 --NotebookApp.token='supersenha'

