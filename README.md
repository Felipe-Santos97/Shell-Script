# Shell-Script
Repositório para passar alguns conceitos de shell 

## Oque é shell??
Shell é o prompt de linha de comando padrão do Unix/Linux, resumindo é uma tela preta onde são digitados comandos (famoso terminal).

É a ligação do usuário com o kernel, tudo oque é feito no ambiente gráfico pode ser feito com o shell. 

O shell padrão do Linux é o bash (Bourne again shell) no Mac também possui basta abrir o "terminal". Caso você use um Windows baixe o "cygwin" ele traz um ambiente Linux 
dentro de seu Windows (mas não tenho certeza se vai funcionar todos os comandos visto aqui)


## Requisitos para fazer scripts
Para começar a fazer os scripts é preciso conhecer alguns dos comandos do bash, começe estudando esses comandos:

### alguns comandos básicos
Comando | Descrição
--------|------------
 cd | change directory - muda o diretório
 cd .. | cd 2 pontos - volta um diretório
 ls | list - lista o conteúdo do diretório corrente 
 pwd | print working directory - mostra o diretório corrente
 cat | concatenate - exibe um arquivo
 rm | remove - excui um arquivo/diretótio
 mkdir | make directory - cria um diretório
 cp | copy - copia arquivos

### exemplos:
**cd** caminho-do-diretório

**cat** arquivo 

**rm** arquivo 

**mkdir** nova-pasta

## Opções 
Os comandos tem as chamadas opções que podem ser passadas para alterar o uso de um programa, elas são usadas com o caractere **-**.
Cada comando tem suas próprias chaves basta ler o manual do comando para saber, mas existe algumas que são populares como:
**-h** para ver a tela de ajuda, **-V** ver a versão, **-R** recursivisade, etc.

#### Exemplos:


Comando     | Descrição 
----------- | -------
cat **-n**  | numera as linhas
rm **-i**   | pede confirmação para deletar
rm **-rf**  | exclui diretórios
ls **-a**   | lista arquivos ocultos




## Comandos avançados


Comando | Descrição 
-------- | ----------
sed  | editor linha de comando
cut  | filtra os campos
tr   | faz trocas de caracteres
grep | filtra por palavras
bc   | calculadora do bash
seq  | gera uma sequência de numeros
test | testa várias condições
sort | ordena caracteres/numeros
date | gerencia data, hora, etc
sleep | deixa em espera
read  | lê uma entrada fornecida

## Programar em shell
Administradores de sistemas precisam fazer scripts para realizar tarefas em um servidor, usuários fazem scripts para criar pequenas ferramentas de auxílio.
Existem muitas vantagens para se aprender shell, com poucas linhas é posssivel fazer muita coisa.
Não é preciso se preocupar com os tipos de variáveis, ponteiros, compilação, acesso ao hardware, etc. 

## Como fazer um programa em shell
Tem alguns passos para criar um programa em shell são eles:

1. Criar um arquivo com a extensão ".sh", ex: **teste.sh**
2. Dar a permissão de execução com o comando (chmod +x nome-do-arquivo) com isso você vai poder executar o arquivo
3. Colocar na primeira linha do arquivo o terminal que vai ser usado no caso é o bash, então: **#!/bin/bash** na primeira linha
4. Para executar o programa basta colocar (**./**) se estiver na pasta do arquivo (**./teste.sh**) ou o caminho completo até chegar no arquivo (**/home/felipe/teste.sh**)

## Primeiro programa
Vamos criar o nosso olá mundo em shell, tudo será feito na linha de comando.

1. Criar o arquivo, comando:  **> olaMundo.sh**
 
2. Dar a permissão de execução, comando: **chmod +x olaMundo.sh** 
 
3. Escolher um editor de texto para abrir o arquivo e digitar:

```
#!/bin/bash

echo "Olá, mundo"

```
4. Executar o arquivo, digitar na linha de comando (estar no mesmo diretório do arquivo)


`./olaMundo.sh`

### Eai, simples?
Esse foi o primeiro programa em shell, lembre-se de colocar na primeira linha **#!/bin/bash**

## Comentários 
Para comentar em shell script basta colocar o caractere # e tudo que vier depois não será interpretado. 

**# Isto é um comentario**

É aconselhável colocar nos programas um cabeçalho inicial com uma explicação geral do seu funcionamento e alguns exemplos de uso,
também comentar certas linhas para deixar claro oque está acontecendo. Mas cuidado para não comentar o óbvio, comentar demais pode ser que não seja uma boa.  


## Isso foi uma pequena introdução ao bash
