## Loop for

É uma outra maneira de realizar repetições alem do while. O loop for é usado na maioria das linguagens e pode ser usado no shell, possui algumas sintaxes

sintaxe básica:
```
for VARIAVEL in LISTA
do
  COMANDOS
done
```

Perceba que é definido uma variável que a cada loop vai respresentar um valor da lista.

Uma lista pode ser uma variável, arquivo, algum comando, sequencias de numeros, etc


### Sequencia de valores
```
for valor in php java python 'java script'
do
  echo "linguagem: $valor"
done
```

Será executado um loop para cada valor depois do **in** e então com uma variável é possivel manipular esses valores. Caso uma palavra tenha espaçamento é preciso usar aspas 
simples como foi em 'java script'.

### Sequencia numérica
```
for valor in 1 2 3 4 5 6 7 8 9 10
do
  echo "$valor"
done
```

### Comando seq

O seq pode ser usado para gerar uma sequencia de numeros
```
for valor in $(seq 1 10)
do 
  echo "$valor"
done
```

Como visto gera uma contagem até 10, caso precise colocar um intervalo por exemplo pular de 2 em 2 usar:

` for valor in $(seq 1 2 10)`

O valor 2 foi colocado entre o inicio e o fim e serve como um intervalo

