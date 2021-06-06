#!/bin/bash
#
# mkscript 
# Autor:  Felipe Santos <felipe.pier7@gmail.com>
#
# -----------------------------------------------------------------------------------------------------------------
# Programa cria um script em shell, basta apenas passar o nome do arquivo como parametro.
# O script será criado:
#  .Com a permissão "x" 
#  .Com a linha "#!/bin/bash"
#  .E já será aberto o editor de texto VIM 
#
# O arquivo vai ser criado no diretório corrente
# Se preferir altere o editor (padrão é o VIM)
# Uso:
# ./mkscript nome-do-arquivo.sh  
# -----------------------------------------------------------------------------------------------------------------

# Pega o nome sendo o primeiro parametro
ARQUIVO="$1"

if [ -z "$ARQUIVO" ]; then
   echo "Digite o nome do arquivo !"
   exit 1
fi

# Cria o script
echo -e "\033[1m Arquivo esta sendo criado: $ARQUIVO  (Ctrl + c para cancelar) \033[m"
sleep 3
echo "#!/bin/bash" > "$ARQUIVO"
chmod +x "$ARQUIVO"
vim "$ARQUIVO"

