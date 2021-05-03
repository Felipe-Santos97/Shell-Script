#!/bin/bash
#
# Programa pede ao usuário uma cor de letra e de fundo e exibe na tela uma frase
# Altere a variavel frase para mudar o texto

frase="Programando em shell"

lista="
   COR   |  LETRA  |  FUNDO

preto    |    30   |   40 
vermelho |    31   |   41
verde    |    32   |   42  
amarelo  |    33   |   43
azul     |    34   |   44
rosa     |    35   |   45  
ciano    |    36   |   46
branco   |    37   |   47
"

echo "$lista"
read -p "Escolha uma cor para letra: " corLetra 
read -p "Escolha uma cor para fundo: " corFundo

# Testa se é valor numerico
[[ "$corLetra" = ?(+|-)+([0-9]) ]] || exit 1 
[[ "$corFundo" = ?(+|-)+([0-9]) ]] || exit 1

# Saida
echo
echo -e "\033[$corLetra;${corFundo}m$frase\033[m"
echo
