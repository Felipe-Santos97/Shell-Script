#!/bin/bash
#
# frase_colorida.sh
# Autor: Felipe Santos
#
# --------------------------------------------------------------------------------------------------------
# Programa pede uma frase para o usúario digitar em seguida é exibido a frase nas cores possiveis
# 
# --------------------------------------------------------------------------------------------------------


read -p "Digite uma frase ou palavra: " frase

# Pega o codigo da primeira cor
codigoCor="30"

# Loop para exibir as cores
while [ "$codigoCor" -le 37 ]; do
  echo -e "\033[${codigoCor}m${frase:-Mensagem Padrão}\033[m\n"
  let codigoCor++
done 

