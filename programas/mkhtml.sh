#!/bin/bash
# 
# mkhtml 
# Autor: Felipe Santos <felipe.pier7@gmail.com>
# 
# -------------------------------------------------------------------------------------------------------------------------
# Serve para criar um arquivo em HTML 5 e abrir com um editor de texto(padrão VS CODE)
# É colocado todas tags basicas de HTML dentro do arquivo criado.
# O arquivo será criado no diretório corrente e o editor irá abrir 
# Uso:
# mkhtml arquivo.html
# -------------------------------------------------------------------------------------------------------------------------

# ================= CONFIGURAÇÃO =================
# Altere o editor de texto (se preferir)
EDITOR="code"
# ================================================


# Pega o esqueleto HTML
HTML="<!DOCTYPE html>
<html lang=pt-br>
  <head>
    <meta charset=UTF-8>
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

echo -e "\033[1m Arquivo esta sendo criado: $ARQUIVO (Ctrl + c para cancelar)\033[m"
sleep 3
echo "$HTML" > "$ARQUIVO"
"$EDITOR" "$ARQUIVO" 

