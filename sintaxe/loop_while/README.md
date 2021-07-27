# loop while

O comando **while** permite realizar um loop enquanto determinada condição ocorrer. Pode ser usado com o comando **test** para poder realizar as condições
(detalhes do comando test no diretório condicionais). Sua sintaxe é:

```
while [ condição ] 
do 
  comandos
done  
```

Perceba o uso do colchetes que substitui a palavra test. 

## Modificar a condição

Se não for modificada a condição resultará no clássico loop infinito, vejamos como somar 1 em uma variável

* `i=$((i+1))`
* `let i++`
* `i=$(expr i + 1)`

O mesmo pode ser feito com decremento

### Vamos contar até 10
```
i="1"
while [ "$i" -le 10 ]
do
  echo "$i"
  i=$((i+1))
done  
```

### Sem os colchetes
```
i="1"
while test "$i" -le 10
do
  echo "$i"
  i=$((i+1))
done 
```

## Loop infinito

Caso deseje fazer sua sintaxe é:

```
while : 
do
  COMANDOS  
done
```

* Lembre-se de colocar alguma situação que interrompa o loop

