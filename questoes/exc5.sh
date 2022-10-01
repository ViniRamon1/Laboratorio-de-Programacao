#!/bin/bash
if [[ -e $1 ]]; then
    tamanho=$(ls -lah $filepath |cut -d ' ' -f 5)
    echo "O arquivo $1 existe e tem tamanho: $tamanho"
else
    echo "Arquivo nao existe"
fi
