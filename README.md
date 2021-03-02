# Shell-Script
Repositório para passar alguns conceitos de shell 

## Oque é shell??
Shell é o prompt de linha de comando padrão do Unix/Linux, resulmindo é uma tela preta onde são digitados comandos(famoso terminal).

É a ligação do usuario com o kernel, tudo oque é feito no ambiente gráfico pode ser feito com o shell e com o tempo você acostuma a usa-lo e um dia não vai querer parar de usar.

O shell padrão do Linux é o bash (é o que será utilizado aqui), no Mac tambem possui basta abrir o "terminal" caso voçê use um Windows baixe o "cygwin" ele traz um ambiente Linux dentro de seu Windows


## Requisitos para fazer scripts
Para começar a fazer os scripts seria bom se já dominasse alguns comandos do terminal, o foco é fazer scripts mas irei mostrar alguns, começe estudando esses comandos:

### alguns comandos basicos:

* cd (change directory) - muda o diretorio
* cd ..    - volta um diretório
* ls (list) - lista o conteudo do diretório corrente 
* pwd (print working directory) - mostra o diretório corrente
* cat (concatenate) - exibe um arquivo
* rm (remove) - excui um arquivo/diretótio
* mkdir (make directory) - cria um diretorio
* cp (copy) - copia arquivos

### exemplos:
**cd** caminho-do-arquivo

**cat** arquivo 

**rm** arquivo 

**mkdir** nova-pasta

### Opções 
Os comandos tem as chamadas opções que podem ser passada para alterar o seu uso, elas são usadas com o caractere "**-**".
Cada comando tem suas próprias chaves basta ler o manual do comando para saber, mas existe algumas que são populares como:
**-h** para ver a tela de ajuda, **-V** ver a versão, **-R** recursivisade ou seja varre diretórios, etc.

#### Exemplos:


comando     | dscrição 
----------- | -------
cat **-n**  | numera as linhas
rm **-i**   | pede confirmação
rm **-rf**  | exclui diretórios
ls **-a**   | lista arquivos ocultos




## Comandos avançados


Comando | descrição 
-------- | ----------
sed  | editor linha de comando
cut  | filtra os campos
tr   | faz trocas de caracteres
grep | filtra por palavras
bc   | calculadora do bash
seq  | gera uma sequencia de numeros
test | testa varias condições
sort | ordena caracteres/numeros
echo | exibe algo na tela
sleep | deixa em espera





