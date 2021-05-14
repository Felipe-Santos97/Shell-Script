# Cores no shell

Para aplicar cores no shell é preciso conhecer antes os **caracteres de controle**, que servem para posicionar e desenhar um texto na tela.
É possível fazer diversas coisas com os caracteres de controle, veremos como alterar a cor da letra e de fundo.          

Caracteres de controle são sequências de caracteres que são "escapados" para a tela, isso significa que eles não vão ser mostrados mas terão uma função
expecífica. Importante saber que o caractere **esc** faz esse escape. Basta usar os comandos **echo** ou o **printf** para enviar as sequências de escape
para a tela.

Para usarmos o esc é preciso representar-lo com seu código octal que é **\033**. A opção **-e** do echo serve para interpretar esse código.
Então para usar cores o **começo** do comando vai ser: 

`echo -e "\033["`

### Apenas revisando 
* Temos que mandar as sequências de escape para a tela com o comando echo 
*  A opção **-e** do echo serve para interpretar as sequências (sem ele não terá efeito)
*  O caractere **esc** faz o escape e tem seu código sendo **\033**

## Mostrando cores na tela

Cada cor de letra e cor de fundo tem seu próprio código, 
não é preciso decorar todas basta consultar o código de cada cor quando for usar. Vamos ver a sintaxe básica para mostrar as cores

`echo -e "\033[ código1 ; código2 m Texto \033[m" `

* Lembre sempre de iniciar e fechar o **esc**. 
* A letra **m** é obrigatória e serve para indicar que depois dela vai vim um texto normal
* Antes da letra **m** é colocado os códigos das cores
* **Texto** representa oque vai ser mostrado na tela. Pode ser uma variável, uma frase, etc 
* **Ponto e virgula** separa os códigos das cores

## Códigos das cores

Vamos ver como representar as cores da letra e de fundo para poder colocar no lugar de **código1** ou **código2**


  Nome da cor  | Cor da letra | Cor de fundo
-------        |--------------|--------------
preto          |    30        |   40    
vermelho       |    31        |   41    
verde          |    32        |   42    
amarelo        |    33        |   43   
azul           |    34        |   44   
rosa           |    35        |   45   
ciano          |    36        |   46   
branco         |    37        |   47   

* Perceba o código de cada cor

## Códigos especiais

Temos alguns códigos que representam alguns atributos e também podem ser usados

Atributo   | Código
---------- | -------
negrito    | 1
sublinhado | 4
pisca-pisca| 5
reverso    | 7

## Hora de testar
Vamos ver alguns exemplos, copie os comandos a seguir no seu terminal

Descrição | Comando
----------|--------
texto com letra azul | `echo -e "\033[34m Programando em shell \033[m"`
texto com letra rosa | `echo -e "\033[35m Programando em shell \033[m"`
letra vermelha e fundo branco | `echo -e "\033[31;47m Programando em shell \033[m"`
texto que pisca | `echo -e "\033[5m Programando em shell \033[m"`
letra branca, fundo rosa, pisca-pisca e sublinhado | `echo -e "\033[37;45;4;5m Programando em shell \033[m"`

* **Não** coloque espaços entre os numeros
* Se não funcionar tente colocar a opção **-n** no echo
