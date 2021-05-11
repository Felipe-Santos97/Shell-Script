# Funções em shell

Permite criar blocos de comandos e usar quantas vezes necessário.
Com o uso de funções não é preciso reescrever trechos de códigos repitidos, basta fazer apenas uma vez e chamar a função pelo nome.

## Criando funções
Possui 2 formas de criar uma função

**Primeira**
```
function nome_da_função {
   COMANDOS
}
```

**Segunda**
```
nome_da_função() {
  COMANDOS
}
```

* Para chamar a função basta apenas escrever o nome dela sem o uso de parênteses (como em outras linguagens)
* Não é permitido espaço no nome da função
* Não é permitido acentos

### Exemplo
```
mostrar_horas(){
  date "+%H:%M:%S"
}
```
Para chamar a função digitar: `mostrar_horas`

## Parâmetros 

São valores que podem ser passados para as funções.
Os Parâmetros ficam armazenados em uma sequência de numeros em ordem crescente, então dentro da função é possível acessar os valores.
Os Parâmetros só funcionam dentro da função


variável | descrição
---------|----------
$1       | corresponde ao primeiro parâmetro 
$2       | corresponde ao segundo parâmetro 
$3       | corresponde ao terceiro parâmetro 

**Veja um exemplo**
```
function mostrar_parametros {
  echo "primeiro parâmetro é: $1"
  echo "segundo parâmetro é: $2"
  echo "terceiro parâmetro é: $3"
}
```
Para chamar a função:

`mostrar_parametros LARANJA BANANA MELANCIA`

* LARANJA vai ser armazenado em **$1**
* BANANA em **$2**, e assim por diante
* Pode ter diversos parâmetros
* O espaço separa os valores
