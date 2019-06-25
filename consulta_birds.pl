/*
Autor: Thiago de França
Comments: André Filho

Aqui nós implementaremos um programa prolog capaz de 
identificar qual a espécie de pássaro observada pelo usuário
baseada nas características fornecidas.
*/

%ordens 
ordem(procellariiformes) :- narinas_externas(tubulares), onde_vive(mar), formato_do_bico(anzol).
ordem(anseriformes) :- formato_do_bico(reto), pes(com_membrana).
/*
Já sabemos, devido a dados no problema, qual as características de cada uma das ordens e famílias
aqui, se as cláusulas atômicas mostrarem-se verdadeiras devido ao input do usuário, a conclusão
será de que a espécie ao qual o usuário se refere se encontra nessa classe ou família específica.
*/

%familias
familia(diomedeidae) :- tamanho(grande), asas(longas), ordem(procellariiformes).
familia(anatidae) :- pescoco(longo), como_voa(lentamente), cor(branca), ordem(anseriformes).

%passaros
bird(albatroz_de_laysan) :- familia(diomedeidae), cor(branca).

bird(albatroz-patinegro) :- familia(diomedeidae), cor(escura).

bird(cisne-pequeno) :- familia(anatidae), assobio(musical_abafado).

bird(cisne-trombeteiro) :- familia(anatidae), assobio(alto_parece_trombeta).

bird(ganso-do-canada) :- familia(anatidae), (estacao(verao), onde_foi_visto(canada); estacao(inverno), onde_foi_visto(eua)), cor_da_cabeca(preta), cor_das_bochechas(brancas).

bird(inconclusivo) :- not(bird(albatroz_de_laysan)), not(bird(albatroz-patinegro)), not(bird(cisne-pequeno)), not(bird(cisne-trombeteiro)), not(bird(ganso-do-canada)).
/*Caso não encontremos um pássaro equivalente ao input, retornamos um resultado para bird como inconclusivo*/

%inputs
/*
Aqui coleta-se o input.
O usuário começa a digitar "bird." no console, isso o ativa e o possibilita
e permite a coleta de inputs em uma estruta de assert. Essa estrutura, ao fim, será
analisada e o retorno das cascterísticas nela incluídas gerará o resultado desejado.
*/
bird:-  writeln("Seram feitas algumas perguntas sobre o p�ssaro, se uma das op�oes entre aspas for a correta � importante que digite igual."),
	nl,
	writeln("Qual a cor do p�ssaro 'branca', 'escura' ou outras?"),
	read(A),
	assert(cor(A)),
	nl,
	writeln("Qual a cor da cabe�a do p�ssaro 'preta' ou outras?"),
	read(B),
	assert(cor_da_cabeca(B)),
	nl,
	writeln("Qual a cor das bochechas do p�ssaro 'brancas' ou outras?"),
	read(C),
	assert(cor_das_bochechas(C)),
	nl,
	writeln("Qual o tamanho do p�ssaro 'grande' ou outros?"),
	read(D),
	assert(tamanho(D)),
	nl,
	writeln("Qual o formatodo bico 'anzol', 'reto' ou outros?"),
	read(E),
	assert(formato_do_bico(E)),
	nl,
	writeln("As narinas externas eram 'tubulares' ou outros?"),
	read(F),
	assert(narinas_externas(F)),
	nl,
	writeln("O pesco�o era 'longo' ou outros?"),
	read(G),
	assert(pescoco(G)),
	nl,
	writeln("os p�s eram 'com_membrana' ou outros?"),
	read(H),
	assert(pes(H)),
	nl,
	writeln("As asas eram 'longas' ou outras?"),
	read(I),
	assert(asas(I)),
	nl,
	writeln("Voava 'lentamente' ou outros?"),
	read(J),
	assert(como_voa(J)),
	nl,
	writeln("O assobio era 'musical_abafado', 'alto_parece_trombeta' ou outros?"),
	read(K),
	assert(assobio(K)),
	nl,
	writeln("O p�ssaro vive no 'mar' ou outros?"),
	read(L),
	assert(onde_vive(L)),
	nl,
	writeln("Foi visto no 'canada', 'eua' ou outros?"),
	read(M),
	assert(onde_foi_visto(M)),
	nl,
	writeln("A esta��o era 'verao', 'inverno' ou outras?"),
	read(N),
	assert(estacao(N)),
	nl.