# Consulta de Pássaros - Prolog

Projeto em Prolog para a cadeira de Lógica para Computação (IF972)
Semestre 2019.1
Professor: [Sérgio Queiroz](https://sites.google.com/a/cin.ufpe.br/srmq/home)
Grupo: André Filho; Thiago Vanderlei; [Lucas do Carmo](https://github.com/Lucasdcb)

Implementação de um programa em Prolog para identificar pássaros

## Arquivos do Projeto:
[consulta_birds.pl](https://github.com/mrdedede/Projeto-Logica-2019.1/blob/master/consulta_birds.pl)
* Aplicação em Prolog com o lifecycledo problema aqui exposto

[logica-primeira-ordem.txt](https://github.com/mrdedede/Projeto-Logica-2019.1/blob/master/logica-primeira-ordem.txt)
* Modelagem do problema dos pássaros em lógica de primeira ordem

[traces.txt](https://github.com/mrdedede/Projeto-Logica-2019.1/blob/master/traces.txt)
* Resultado dos traces feitos ao fim da implementação

## Fluxograma do uso:
1. O usuário recebe uma mensagem introdutória
2. O usuário deve, então, informar, nesta ordem, as seguintes informações sobre o pássaro:
  * Cor do corpo
  * Cor da cabeça
  * Cor das bochechas
  * Tamanho
  * Formato de bico
  * Formato das narinas
  * Tamanho do pescoço
  * Tipo dos pés
  * Tamanho das asas
  * Velocidade do voo
  * Tipo de assobio
  * Local onde vive o pássaro
  * Local onde foi avistado o pássaro
  * Estação do ano
3. A partir das informações fornecidas, o programa deve induzir o tipo de pássaro

## Lógica de Primeira Ordem (LPO)
A Modelização do problema em LPO segue o seguinte padrão:

```scss
L(x) = x é um Albatroz de Laysan
C(x,y) = a cor de x é y ("b" é branca e "e" é escura)
F(x,y) = a família de x é y ("d" é diomedeidae e "a" é anatidae)
T(x,y) = o tamanho de x é y ("g" é grande)
W(x,y) = as asas de x são de um jeito y ("l" é longo)
O(x,y) = a ordem de x é y ("p" é procellariiformes e "a'" é anseriformes)
A(x) = x é um Albatroz Patinegro
N(x,y) = o pescoço de x é y ("l" é longo)
P(x) = x é um Cisne Pequeno
M(x,y) = o assobio de x é y ("k" é abafado e "m" é "t" é parece uma trompeta)
V(x,y) = x voa de um jeito y ("l" é lentamente)
B(x,y) = o bico de x é de um jeito y ("r" é reto )
F(x,y) = o pé de x é de um jeito y ("m" é membranoso)
E(y) = y é a estação no qual nos encontramos ("i" é inverno e "v" é verão)
L(y) = y é o lugar onde nos encontramos ("u" é EUA e "c" é Canadá)
G(x) = x é um Ganso do Canadá
U(x) = x é um cisne trompeteiro


(∀x)(F(x,d) ∧ C(x,b) →L(x)) #Albatroz de Laysan
(∀x)(T(x,g) ∧ W(x,l) ∧ O(x,p) → F(x,d)) #diomedeidae
(∀x)(N(x,t’) ∧ H(x,m’) → O(x,p)) #procellariiformes
(∀x)(F(x,d) ∧ C(x,e) →A(x)) #Albatroz Patinegro
(∀x)(F(x,a) ∧ M(x,a’) →P(x)) #Cisne Pequeno
(∀x)(N(x,l) ∧ V(x,l') ∧ C(x,b) ∧ O(x,a') → F(x,a)) #anatidae
(∀x)(B(x,r) ∧ F(x,m) → O(x,a’)) #anseriformes
(∀x)(F(x,a) ∧ ((E(v) ∧ L(c)) ∨ (E(i) ∧ L(u))) → G(x)) #Ganso do Canadá
(∀x)(F(x,a) ∧ M(x,t) → U(x)) #Cisne Trombeteiro
```

## Conclusão:

Dadas as observações efetuadas em nosso estudo, podemos perceber que o programa prolog desenvolvido por nós é funcional:
- O retorno dos pássaros sempre vem a ser correto, tendo em vista os dados que foram embutidos.
- A lógica de primeira órdem se mostra o mais próxima possível do que se pode atingir em prolog nos termos implementados
- Vemos a partir dos traces do programa algumas das soluções plausíveis como resultado do problema e temos visto que elas refletem aquilo que o usuário houver posto como informação, o que auxilia a provar esse ponto sem que hajam testes à exaustão
