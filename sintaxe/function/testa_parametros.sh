#!/bin/bash
#
# Programa verifica todos os parametros passados para uma função. Faz o uso do comando shift.
# É feito um loop testando a variável $1 até ela não ter valor.
# No primeiro loop esta variável vai conter o primeiro parâmetro passado para a função,
# no final do loop é utilizado o shift que faz o valor de $2 passar para $1. 
# Assim o parâmetro que estava em $2 no próximo loop vai passar para $1, o mesmo serve para $3 que vai ser passado para $2.
# É feito até $1 não possuir valor (parâmetro)
#
# Variáveis especiais:
# $* contem o valor de todos os parâmetros passados
# $# contem o numero total de parâmetros 



# Cria a função 
mostrar_parametros(){  
  echo "------------------ CHAMADA DA FUNÇÃO ------------------" 
  echo "Valor dos parâmetros: $*" 
  echo -e "Quantidade total de parâmetros: $# \n"  
 
  # Serve para mostrar dentro do loop a posição do parâmetro
  indice="1"

  # Loop para verificar os parâmetros
  while [ -n "$1" ] ; do             
    echo "$indiceº parâmetro: $1"

    # Faz a fila andar
    shift
    indice=$((indice+1))
  done  
  echo  
}


# Testes
mostrar_parametros oi ola 
mostrar_parametros programando em shell script
mostrar_parametros 10 20 30 40 50 

