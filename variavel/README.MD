# Variáveis no shell 

### No shell não precisa especificar o tipo da variável, utilizar "aspas" para string
```
NOME="jose"
IDADE=50
 ```

## Algumas regras sobre o uso de variaveis:

 * Não pode ter espaço ao redor do igual.
 * Possui diferença entre letra maiusculas e minusculas

Para escrever o valor de uma variável utilizar o caractere especial $, e tambem sempre utilizar "aspas"
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
