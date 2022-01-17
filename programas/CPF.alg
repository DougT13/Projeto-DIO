algoritmo "CPF"
var
num,num2,final,final2,pare,mult, mult2,dig1,dig2,d1,d2:inteiro
inicio
escreval("digite os números do seu cpf")
pare<-9
final<-0
final2<-0
mult<-10
mult2<-11
enquanto (pare<>0)faca
         leia(num)
         num2<-num //isto serve para que o usuário não tenha que escrever o cpf duas vezes. Dessa forma, o cálculo para a segundo digito começa por aqui.
         num<-num * mult
         final<-num + final//aqui foi feito os cálculos para o primeiro digito
         num2<-num2 * mult2
         final2<-num2 + final2 //aqui foi calculado o começo da conta para descobrir o segundo digito. Terminará logo após descobrir o primeiro digito.
         mult<-mult - 1
         mult2<-mult2 - 1
         pare<- pare - 1 //serve para parar a estrutura de repetição
fimenquanto
dig1<- final mod 11
se (dig1<2)entao
   dig1<-0
senao
     dig1<-11-dig1
fimse //após a sessão de códigos acima, descobrimos o primeiro digito.
dig2<-dig1 * 2 //com o primeiro digito descoberto, podemos finalizar o cálculo para o segundo digito.
final2<-final2 + dig2 //somamos o resultado dig2 com o resultado da conta feita na estrutura de repetição final2. Assim, podemos passar adiante.
dig2<- final2 mod 11
se (dig2<2)entao
   dig2<-0
senao
     dig2<-11-dig2
fimse //aqui, já descobrimos o segundo digito. Basta saber se é válido.
escreval("agora escreva os digitos")
leia(d1,d2)
se (d1=dig1) e (d2=dig2)entao
   escreval("CPF VÁLIDADO")//caso os digitos escritos pelo usuário sejam iguais ao queo programa descobriu, o CPF é válido.
senao
     escreval("CPF INVÁLIDO")//caso contrário, o CPF é inválidado.
fimse
fimalgoritmo
