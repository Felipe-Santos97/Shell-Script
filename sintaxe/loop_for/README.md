# Loop for

É uma outra maneira de realizar repetições além do while. O loop for é usado na maioria das linguagens e pode ser utilizado no shell, possui algumas sintaxes

sintaxe básica:
```
for VARIAVEL in LISTA
do
  COMANDOS
done
```

Perceba que é definido uma variável que a cada loop vai representar um valor da lista.
Uma lista pode ser uma variável, arquivo, algum comando, sequências de numeros, etc


## Sequência de valores
```
for valor in php java python 'java script'
do
  echo "linguagem: $valor"
done
```

Será executado um loop para cada valor depois do **in** e então com uma variável é possivel manipular esses valores. Caso uma palavra tenha espaçamento é preciso usar aspas 
simples como foi em 'java script'.

## Sequência numérica
```
for valor in 1 2 3 4 5 6 7 8 9 10
do
  echo "$valor"
done
```

## Comando seq

O seq pode ser usado para gerar uma sequência de numeros
```
for valor in $(seq 1 10)
do 
  echo "$valor"
done
```
O comando seq pode não funcionar se você utiliza um Mac ou Unix, tente utilizar o comando **jot**

### intervalo

Caso precise colocar um intervalo por exemplo pular de 2 em 2

` for valor in $(seq 1 2 10)`

* O valor 2 foi colocado entre o inicio e o fim e serve como um intervalo


## For clássico

Caso não esteja satisfeito ainda é possível usar o **for** como da linguagem c

```
for ((i=1; i<=10; i++))
do
  echo "$i"
done
```

