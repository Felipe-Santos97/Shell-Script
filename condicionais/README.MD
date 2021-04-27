## Estruturas condicionais em shell

 O uso do **if** é diferente em shell, ele não testa uma condição mas sim 
um comando.
Se a saida do comando for verdadeira ele executa o bloco, mas como usar então?

Para usar o if como em outras linguagens de programação é preciso usar o comando **test**,
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
=     | string é igual
!=    | strig é diferente
-n    | string não é nula
-z    | string é nula

### testes em arquivos
Opção | Descrição
------|---------
-d    | é um diretório?
-f    | é um arquivo?
-r    | tem permissão de leitura?
-w    | tem permissão de escrita?
-s    | arquivo tem conteudo?

Como foi visto o comando **test** "testa" mais condições que as outras linguagens, podendo testar até arquivos e diretórios.

## Usando o test com o if
Existem 2 maneiras de usar:

**if test VALOR EXPRESSÃO**, ou usar colchetes para substituir a paravra test

**if [VALOR EXPRESSAO]**


