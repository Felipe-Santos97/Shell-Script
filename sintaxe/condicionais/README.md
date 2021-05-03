## Estruturas condicionais em shell

O uso do **if** é diferente em shell, ele não testa uma condição mas sim um comando.
Se a saida do comando for verdadeira ele executa o bloco, mas como saber ?

Vai ser verdadeira quando a saída do comando for igual a zero que significa sem erros, caso seja diferente de zero, o **if** não irá executar o bloco de código.
 

Para usar o **if** como em outras linguagens de programação é preciso usar o comando **test**
com ele é possivel comparar strings, veriricar se a string é nula, comparar numeros com outros numeros, etc.

opções do comando **test**:

### testes em numeros 
Opção | Descrição
------|---------
-lt   | menor que   (Less Than)
-le   | menor igual (Less Equal)
-gt   | maior que   (Greather Than)
-ge   | maior igual (Greather Equal) 
-ne   | numero é diferente (Not Equal)

### testes em Strings
Opção | Descrição
------|---------
=     | string é igual?
!=    | strig é diferente?
-n    | string não é nula?
-z    | string é nula?

### testes em arquivos
Opção | Descrição
------|---------
-d    | é um diretório?
-f    | é um arquivo?
-r    | tem permissão de leitura?
-w    | tem permissão de escrita?
-s    | arquivo tem conteudo?

Como foi visto o comando **test** "testa" mais condições que as outras linguagens, podendo testar até arquivos e diretórios.

## Sintaxe do if
```
if COMANDO              
then
  comandos
else
 comandos
fi
```

### Condicionais aninhados
Basta usar **elif**
```
if COMANDO
then
  comandos

elif COMANDO
 comando

else
 comandos
fi
```  
### Usar if com test

Vamos testar se uma variavel é maior que 10,
existem 2 maneiras de escrever são elas:

**primeira maneira**
```
if test "$variavel" -gt 10; then
  echo "$variavel é maior que 10"
else
  echo "$variavel é menor que 10"
fi

```
Perceba o uso do **then** na mesma linha do if basta usar ponto e virgula, é uma outra maneira de fazer.
A chave **-gt** (Greater than) para ver se o numero é maior.


***segunda maneira:***
```
if [ "$variavel" -gt 10 ]; then
  echo "$variavel é maior que 10"
else
  echo "$variavel é menor que 10"
fi
```
Foi usado colchetes para substituir o uso da palavra **test**, repare os espaços entre os colchetes sem eles da erro.


## Testes simples
Há uma outra maneira de testar que pode ser um pouco mais avançada, é usado os operadores **and** ou **or**.
Usar quando tiver que realizar somente um comando, assim deixa a sintaxe mais simples e reduz o uso do if.
sintaxe:

`[ "$variavel" -lt 10 ] && echo "Menor que 10"`

`[ "$variavel" -lt 10 ] || echo "Maior que 10"`
 
Foi usado somente os colchetes (lembre de colocar os espaços) em seguida os operadores **&&** para **and** e **||** para **or**.

operadores | descrição
-----------| ----------------------------------------
and  | caso primeiro comando for true ele executa o segundo
or   | caso primeiro for false ele executa o segundo

### Testar variável vazia 
Uma maneira simples de verificar se uma variável tem valor, podendo realizar o teste e tomar uma ação caso a variável não tenha valor.

```[ "$variavel" ] || exit 1 ```

Caso a variável não tenha valor será executado o comando **exit 1** que sai do programa, basicamente ele diz "Variavel ou tem valor ou eu fecho o programa".

Vamos ver como seria o mesmo comando mas usando o **if**
```
if [ -z "$variavel" ]
then
  exit 1
fi
```
Eai, gostou da forma resumida?
Faça seus proprios testes, com o tempo você vai dominar o uso do **if**


## conclusão:


* O if é utilizado com o comando **test** para ser usado igual nas outras linguagens de programação mas ele pode ser usado para testar a saída de um comando do bash
* Sempre coloque os espaços entre as estruturas como entre os colchetes
* Há 2 maneiras de usar o **if/test**, uma com a palavra reservada test, outra com os colchetes
* Use a forma resulmida quando tiver apenas 1 comando para ser executado
* Faça diversos testes para poder entender melhor o seu uso, há exemplos neste capítulo

