#!/bin/bash
#
# Programa é conhecido pelo nome: algoritimo triângulo de Floyd.
# Faz o uso de um loop dentro do outro, é pedido um numero para informar a quantidade de linhas. 
# saída do programa:
#
# *
# * *
# * * *
# * * * *
# * * * * * 
# * * * * * * 


read -p "Digite a quantidade de linhas: " linhas

# Verifica se foi informado um numero
[ "$linhas" ] || exit 1
[[ "$linhas" = ?(+|-)+([0-9]) ]] || exit 1 

# Limite é 35 
[ "$linhas" -gt 35 ] && exit 1
 

# loop para mostrar o triangulo.
for ((i=1; i <= $linhas; i++)); do

  for((j=1; j <= $i; j++)); do
    echo -n "* "
  done

 echo ""
done

