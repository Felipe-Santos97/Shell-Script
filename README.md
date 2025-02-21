# Shell-Script ![GitHub top language](https://img.shields.io/github/languages/top/Felipe-Santos97/Shell-Script)

## Intro

* Repositório para passar alguns conceitos de shell 

* Sistema operacional utilizado: **Debian GNU/Linux** 

* Shell utilizado: **bash**

 Os programas não contém comandos maliciosos como `rm -rf /` ou outros, se você utiliza algum sistema diferente de GNU/Linux pode ser que alguns dos comandos não funcione se for o caso abra uma **issue** ou pesquise algum comando correspondente.

Cada diretório possui um arquivo **.md** com a teoria do assunto, foi feito para ler na página do github pois está no formato **markdown**.

### Referencias
* Livro: [Descobrindo o Linux](https://novatec.com.br/livros/linux-3ed/) (João Eriberto Mota Filho)
* Livro: [Shell Script Profissional](https://www.shellscript.com.br/) (Aurelio Marinho Jargas)
* [ Curso Shell Scripting ](https://www.youtube.com/watch?v=EOLPUc6oo-w&list=PLucm8g_ezqNrYgjXC8_CgbvHbvI7dDfhs) (Canal Bóson Treinamentos)
* [Papai do Shell](https://www.youtube.com/channel/UCpIYXOF825aX8qq77xnTCLQ) (Julio Neves)

## Sumário
* Introdução ao Shell
* [Sintaxe](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe)
  * [Variáveis](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/variaveis)
  * [Condicionais](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/condicionais)
  * [Loop while](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/loop_while)
  * [Loop for](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/loop_for)
  * [Switch case](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/switch_case)
  * [Function](https://github.com/Felipe-Santos97/Shell-Script/tree/main/sintaxe/function)
* [Cores](https://github.com/Felipe-Santos97/Shell-Script/tree/main/cores)
* [Programas](https://github.com/Felipe-Santos97/Shell-Script/tree/main/programas)  
  
  
***
## Introdução ao Shell  

### Oque é shell?
Shell é uma interface de linha de comando que permite acessar recursos de um sistema operacional.
É a ligação do usuário com o kernel, tudo oque é feito no ambiente gráfico pode ser feito com o shell 
(podemos fazer mais coisas no shell em relação ao ambiente gráfico). 

Temos diversos shells, o padrão do Linux é o bash (Bourne Again SHell) no Mac também possui basta abrir o "terminal".
Caso você use um Windows baixe o "cygwin" ele traz um ambiente Linux (unix like)
dentro de seu Windows.


### Requisitos para fazer scripts
Para começar a fazer os scripts é preciso conhecer alguns dos comandos do bash, comece estudando esses comandos:

### alguns comandos básicos
Comando | Descrição
--------|------------
 cd | muda o diretório (Change Directory)
 cd .. | volta um diretório (cd 2 pontos)
 ls | lista o conteúdo do diretório corrente (List) 
 pwd | mostra o diretório corrente (Print Working Directory)
 cat | exibe um arquivo ou mais (Concatenate)
 rm | exclui um arquivo/diretório (Remove)
 mkdir | cria um diretório (Make Directory)
 cp | copia arquivos (Copy)

### exemplos:
**cd** /caminho/do/diretório

**cat** arquivo 

**rm** arquivo 

**mkdir** nova-pasta

## Opções 
Os comandos têm as chamadas opções (ou chaves) que podem ser passadas para alterar o seu uso, elas são usadas com o caractere `- `.
Cada comando tem suas próprias opções basta ler o manual do comando para saber, mas existem algumas que são populares como:
**-h** para ver a tela de ajuda, **-V** ver a versão, **-R** recursividade, etc.

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

1. Criar um arquivo com a extensão ".sh". Exemplo: **teste.sh**
2. Dar a permissão de execução com o comando: **chmod +x nome-do-arquivo** (com isso você vai poder executar o arquivo)
3. Colocar na primeira linha do arquivo o terminal que vai ser usado no caso é o bash, então: **#!/bin/bash** na primeira linha
4. Para executar o programa basta colocar **./** se estiver na pasta do arquivo **./teste.sh** ou o caminho completo até chegar no arquivo **/home/felipe/teste.sh**

## Primeiro programa
Vamos criar o nosso olá mundo em shell, tudo será feito na linha de comando.

1. Criar o arquivo, comando: ` > olaMundo.sh`
 
2. Dar a permissão de execução, comando: ` chmod +x olaMundo.sh` 
 
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

**# Isto é um comentário**

É aconselhável colocar nos programas um cabeçalho inicial com uma explicação geral do seu funcionamento e alguns exemplos de uso,
também comentar certas linhas para deixar claro oque está acontecendo. Mas cuidado para não comentar o óbvio, comentar demais pode ser que não seja uma boa.  
