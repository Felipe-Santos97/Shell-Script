#!/bin/bash
# 
# Programa serve de exemplo para o uso de variáveis visto neste capítulo
# pede um email e senha em seguida mostra a hora atual


# Pega os dados do usuário
read -p "Digite seu email: " email

read -sp "Digite sua senha: " senha
echo

# Testa se foi digitado alguma coisa
[ "$email" ] && [ "$senha" ] || exit 1

# Pega a hora atual
hora=$(date "+%H:%M")

echo -e "\n$email logado as $hora horas."

