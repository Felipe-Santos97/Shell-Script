#!/bin/bash
#
# Programa serve para exibir uma frase ou palavra em algumas cores. A frase é escolhida pelo usuário


read -p "Digite uma frase ou palavra: " frase

# Pega o codigo da primeira cor
codigoCor="30"

# Loop para exibir as cores
while [ "$codigoCor" -le 37 ]; do
  echo -e "\033[${codigoCor}m${frase:-Mensagem Padrão}\033[m\n"
  let codigoCor++
done 

