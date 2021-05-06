#!/bin/bash
#
# Programa pede ao usuário uma cor de letra e de fundo e exibe na tela uma frase
# Altere a variavel frase para mudar o texto

frase="Programando em shell"

lista="
  COR    |  LETRA  |  FUNDO | 

preto    |    30   |   40   | 
vermelho |    31   |   41   | 
verde    |    32   |   42   | 
amarelo  |    33   |   43   |
azul     |    34   |   44   |
rosa     |    35   |   45   |
ciano    |    36   |   46   | 
branco   |    37   |   47   |
-----------------------------
    ESPECIAIS

   NOME    | CÓDIGO | 
      
negrito    |   1   |
pisca      |   5   |
sublinhado |   4   | 
----------------------------
"

echo "$lista"
read -p "Escolha o primeiro numero: " primeiro 
read -p "Escolha o segundo numero: " segundo

# Testa se é valor numerico
[[ "$primeiro" = ?(+|-)+([0-9]) ]] || exit 1 
[[ "$segundo" = ?(+|-)+([0-9]) ]] || exit 1

# Saida
echo -e "\n\033[$primeiro;${segundo}m$frase\033[m\n"
