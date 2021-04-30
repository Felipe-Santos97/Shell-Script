#!/bin/bash
# 
# Programa serve de exemplo para o uso de variáveis visto neste capítulo


# Pega os dados do usuário
read -p "Digite seu email: " email

# Testa se foi digitado alguma coisa
[ "$email" ] || exit 1

# Pega a hora atual
hora=$(date "+%H:%M")

echo "logado as $hora horas."

