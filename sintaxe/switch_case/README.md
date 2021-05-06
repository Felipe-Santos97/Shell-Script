# Switch

Estrutura similar ao switch case de algumas linguagens de programação. Simplifica o uso do if encadeado, sua sintaxe básica é:

```
case "$variavel" in 
  
  opção1) 
         COMANDOS
   ;;
   
   opção2)
         COMANDOS 
    ;;
    
    *)
      COMANDOS (caso nenhuma opção for atendida)
    ;; 

esac
```

* "**esac**" Usado para fechar o bloco do case
* "**;;**"  Serve para fechar cada bloco de opção
* A estrutura vai testando cada opção até achar alguma verdadeira
* Caso a variável possua o valor de **opção1** os comandos correspondentes serão executados e em seguida irá sair da estrutura case
* "***)**" Serve como padrão caso nenhuma opção seja atendida, em algumas linguagens é chamado de **default**

### Veja um exemplo
```
linguagem="java script"

case "$linguagem" in 
    
  php) 
    echo "Linguagem escolhida foi: $linguagem"   ;;  
  
 'java script')
     echo "Linguagem escolhida foi: $linguagem" ;;
    
  c)
    echo "Linguagem escolhida foi: $linguagem  ;; 

  *) 
    echo "linguagem não cadastrada"  ;;
   
esac
```
* Perceba o uso de aspas em palavras que tem espaçamento

## Testar multiplas condições

Ainda é possível testar mais de uma condição por bloco, sua sintaxe é:
```
case "$variavel" in 

  opção1 | opção2) 
        COMANDOS DO BLOCO 1  
  ;; 
    
  opção3 | opção4) 
        COMANDOS DO BLOCO 2  
  ;;
      
esac  
```
* É utilizado o caractere "**|**" para testar mais de uma opção
* Caso a variável corresponda **opção1** ou **opçao2** será executado os comandos do bloco 1
* Caso a variável corresponda **opção3** ou **opçao4** será executado os comandos do bloco 2
 
### Veja um exemplo 
```
parametro="--version"

case "$parametro" in 
    
  -h | --help)
      echo "$parametro: exibe a ajuda" 
  ;;  
  
  -V | --version)
      echo "$parametro: exibe a versão" 
  ;;
 
  -i | --ignore-case)
     echo "$parametro: letras maiúsculas e minúsculas são tratadas iguais" 
  ;;

  *) 
   echo "parametro não definido" 
  ;;
   
esac
```
* A saída do programa vai ser (**--version: exibe a versão**) pois a variável possui o valor **--version** e caiu no bloco correspondente
* Caso a variável tivesse o valor **-V** também iria executar o mesmo bloco de comandos

  
