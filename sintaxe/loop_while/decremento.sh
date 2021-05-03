#!/bin/bash
#
# Programa pede um numero como entrada e diminui até 1
# Serve de exemplo para o comando while.
# Foque no comando while, alguns comandos foram feitos para tentar não quebrar o programa somente.


read -p "Digite um numero: " numero
echo

# Se não for numero fecha o programa 
[[ "$numero" = ?(+|-)+([0-9]) ]] || exit 1

# limite do valor é 60
[ "$numero" -gt 60 ] && exit 1

while [ "$numero" -ge 1 ]; do
  echo -n "$numero "
  let numero--
done

echo
