# Variáveis no shell 

### No shell não precisa especificar o tipo da variável
```
NOME="jose"
IDADE="50"
 ```

## Algumas regras sobre o uso de variaveis:

 * Não pode ter espaço ao redor do igual.
 * Possui diferença entre letra maiusculas e minusculas
 * Boa prática sempre utilizar aspas, até para numeros
 
Para escrever o valor de uma variável utilizar o caractere especial $
```
echo "$NOME"
echo "$IDADE"
```

O comando **echo** serve para exibir na tela


## Pegar dados do usuário 

É utilizado o comando **read** para ler dados e assim possivel atribuir a variáveis
```
echo "Digite seu nome: "
read NOME 
```

Com isso é guardado na variavel NOME

 
### Uma forma mais simples que não precisa do **echo**:

`read -p "Digite seu nome: " NOME `



## Comandos
Ainda é possivel armazenar a saída de um comando em uma variável, sintaxe:

**variavel=$(comando)**
```
raiz=$(ls /)
diretorioAtual=$(pwd)
```
**ls /** lista os diretórios na raiz e **pwd** exibe o diretório atual 

## Expansão de variáveis

É um recurso do shell que permite manipular variáveis, bastante util que pode economizar linhas.
Há diversos recursos veremos somente alguns

sintaxe:
`${variavel}`

  sintaxe    | descrição
-------------|---------
${#variavel} | retorna o tamanho da string
${variavel:-texto} | caso a variável não tenha valor texto será **retornado**
${variavel:=texto} | caso a variável não tenha valor texto será **definido**
${variavel:5}      | retorna o texto apartit do quinto caractere
${variavel/hello/ola} | substitui hello por ola apenas 1 vez
${variavel//hello/ola} | substitui hello por ola sempre









