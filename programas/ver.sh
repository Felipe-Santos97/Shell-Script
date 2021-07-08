#!/bin/bash
# 
# ver.sh 
# Autor: Felipe Santos <felipe.pier7@gmail.com>
# Requisitos: dialog
#
# ------------------------------------------------------------------------------------------------
# . Programa exibe um arquivo de texto na forma de dialog 
# . Dialog é um programa que desenha janelas no terminal
# . O arquivo que será visto é passado como parametro
# Uso:
# ver.sh [ arquivo ]
# ------------------------------------------------------------------------------------------------


# Pega o arquivo como primeiro parametro
arquivo="$1"

# Faz os testes para ver se pode ser exibido o arquivo
if [ ! -e "$arquivo" ]; then                         # -e: arquivo existe? 
  echo "Arquivo não encontrado"
  exit 1

elif [ -d "$arquivo" ]; then                         # -d: é um diretório?
  echo "É um diretório"
  exit 1

elif [ ! -r "$arquivo" ]; then                       # -r: Tem permissão de leitura? ! nega a expressão
  echo "Permissão de leitura negada"
  exit 1
fi  

# Exibe o conteudo do arquivo
dialog --title "$arquivo" --textbox "$arquivo" 0 0  

# fecha o programa 
[ $? -eq 0 ] && {
 clear
 exit
}

