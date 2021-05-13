#!/bin/bash
# 
# mkhtml - Cria um arquivo HTML com as tags necessárias
# Autor: Felipe Santos <felipe.pier7@gmail.com>
# 
# -------------------------------------------------------------------------------------------------------------------------
# Serve para criar um arquivo em HTML 5 e abrir com visual code, o nome do arquivo é passado como parametro.
# É colocado todas tags basicas de html dentro do arquivo criado. Altere o editor de texto se preferir (padrão VS CODE)
# Uso:
# mkhtml arquivo.html
# -------------------------------------------------------------------------------------------------------------------------


# Pega o esqueleto HTML
HTML="<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  
</body>
</html>"

# Pega o arquivo que será criado
ARQUIVO="$1"


if [ -z "$ARQUIVO" ]; then
  echo "Digite o nome do arquivo !"
  exit 1 
fi

echo -e "\033[1m Arquivo esta sendo criado: $ARQUIVO (Ctrl + c para cancelar)\033[m"; sleep 2
echo "$HTML" > "$ARQUIVO"
code "$ARQUIVO"

