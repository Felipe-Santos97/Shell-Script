#!/bin/bash
# 
# Programa serve de exemplo para o uso de variáveis visto neste capítulo


# Pega os dados do usuário
read -p "Digite seu nome: " nome

# Testa se foi digitado alguma coisa
[ "$nome" ] || exit 1

# Pega a hora atual
hora=$(date "+%H:%M")

echo "$nome entrou no sistema as $hora horas."
