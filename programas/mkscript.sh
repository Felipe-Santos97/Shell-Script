#!/bin/bash
#
# mkscript - cria um script em shell
# Autor:  Felipe Santos <felipe.pier7@gmail.com>
#
# -----------------------------------------------------------------------------------------------------------------
# Programa cria um script em shell. Basta apenas passar o nome do arquivo que será criado com parametro.
# Pronto, o script será criado com a permissão "x", com a linha "#!/bin/bash" e já sera aberto o vim 
# O arquivo vai ser criado no diretório corrente
# Se preferir altere o editor (padrão é o VIM)
# Uso:
# ./mkscript nome-do-arquivo  
# -----------------------------------------------------------------------------------------------------------------

# Pega o nome sendo o primeiro parametro
ARQUIVO="$1"

if [ -z "$ARQUIVO" ]; then
   echo "Digite o nome do arquivo !"
   exit 1
fi

# Cria o script
echo -e "\033[1m Arquivo esta sendo criado: $ARQUIVO  (Ctrl + c para cancelar) \033[m"
sleep 2
echo "#!/bin/bash" > "$ARQUIVO"
chmod +x "$ARQUIVO"
vim "$ARQUIVO"

