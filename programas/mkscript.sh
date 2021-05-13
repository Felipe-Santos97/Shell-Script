#!/bin/bash
#
# mkscript - cria um script em shell
# Autor:  Felipe Santos <felipe.pier7@gmail.com>
#
# -----------------------------------------------------------------------------------------------------------------
# Basta apenas chamar esse programa e passar o nome do arquivo
# ./mkscript [ nome-do-arquivo ] 
# Pronto, o script será criado com a permissão "x", com a linha "#!/bin/bash" e já sera aberto o vim 
# O arquivo vai ser criado no diretório corrente
# Se preferir altere o editor (padrão é o VIM)
# -----------------------------------------------------------------------------------------------------------------

# Pega o nome sendo o primeiro parametro
nomeArquivo=$1

if [ -z $nomeArquivo ]; then
   echo "Digite o nome do arquivo !"
   exit 1
fi

# Cria o script
echo -e "\033[1m Arquivo esta sendo criado: $nomeArquivo  (Ctrl + c para cancelar) \033[m"
sleep 2
echo "#!/bin/bash" > "$nomeArquivo"
chmod +x "$nomeArquivo"
vim "$nomeArquivo"

