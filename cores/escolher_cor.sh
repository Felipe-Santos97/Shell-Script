#!/bin/bash
#
# escolher_cor.sh
# Autor: Felipe Santos 
#
# -------------------------------------------------------------------------------------------------
# Programa pede ao usuário escolher um codigo para a cor da letra e de fundo.
# Em seguida exibe na tela uma frase, altere a variavel frase para mudar o texto
# Ainda é possivel escolher os códigos especiais para poder piscar ou sublinhar
# -------------------------------------------------------------------------------------------------


frase="Programando em shell"

# Mostra as opções de cores
echo "
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
      
negrito    |   1   |
pisca      |   5   |
sublinhado |   4   | 
----------------------------
"

read -p "Escolha o primeiro numero: " primeiro 
read -p "Escolha o segundo numero: " segundo

# Testa se é valor numerico
[[ "$primeiro" = ?(+|-)+([0-9]) ]] || exit 1 
[[ "$segundo" = ?(+|-)+([0-9]) ]] || exit 1

# Saida
echo -e "\n\033[$primeiro;${segundo}m$frase\033[m\n"

