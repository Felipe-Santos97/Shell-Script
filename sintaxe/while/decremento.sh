#!/bin/bash
#
# Serve de exemplo para o comando while
# Programa pede um numero como entrada e diminui até 1


read -p "Digite um numero: " numero
echo

# Se não for numero fecha o programa 
[[ "$numero" = ?(+|-)+([0-9]) ]] || exit 1

# limite do valor é 100
[ "$numero" -gt 100 ] && exit 1

while [ "$numero" -ge 1 ]; do
  echo -n "$numero "
  let numero--
done

echo
