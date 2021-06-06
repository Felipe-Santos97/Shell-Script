#!/bin/bash
#
# email_senha.sh
# Autor: Felipe Santos
#
# ------------------------------------------------------------------------------------------------------------ 
# Pede um email e senha em seguida mostra a hora atual.
# Não é feita nenhuma verificação de email ou senha, programa serve apenas de exemplo do uso de variáveis.
# parametro -s do read serve para não mostrar os dados digitados na tela
# ------------------------------------------------------------------------------------------------------------ 

# Pega os dados do usuário
read -p "Digite seu email: " email

read -sp "Digite sua senha: " senha
echo

# Testa se foi digitado alguma coisa
[ "$email" -a "$senha" ] || exit 1

# Pega a hora atual
hora=$(date "+%T")

echo -e "\n \033[1m$email logado as $hora horas.\033[m"

