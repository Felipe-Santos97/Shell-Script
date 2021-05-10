#!/bin/bash
#
# Algoritimo para medir a média de um aluno. Será informado somente 2 notas
# A média para passar é 6.0


# Pede as notas
read -p "Digite a primeira nota: " nota1
read -p "Digite a segunda nota: " nota2

# Verifica se foi digitado algum valor válido
[ "$nota1" -a "$nota2" ] || exit 1 

# Calcula a média com o programa bc
media=$(bc <<< "($nota1+$nota2)/2")

# Verifica se a media esta dentro do permitido
[ "$media" -le 10 ] || exit 1


# verifica a situação do aluno 
if [ "$media" -ge 6 ]; then
   resultado="Aluno PASSOU"

elif [ "$media" -lt 6 -a "$media" -gt 4 ];then
  resultado="Aluno esta de RECUPERAÇÃO"

else
  resultado="Aluno REPROVOU"
fi

echo "
-----------------------------------------
A média do aluno foi: $media
Situação: $resultado
-----------------------------------------"


