# Acionamento por IR com Dispositivo Atuador Genérico

Melisse P. Cabral;
Julio Cesar Ferreira Lima;
José Lucas Damasceno Holanda;
Eric Guimarães Barbosa;
João Lucas de Oliveira Torres

Universidade Federal do Ceará, Sobral, Brasil

melissecabral@gmail.com;
julio\_flima@hotmail.com ; 
lucasholanda95@gmail.com;
ericguimaraes@msn.com;


**Abstract — This report proposes to present the development of a residential automation destined to be manufactured in the Brazilian industry. They were used to carry out the project by developing free software like Arduino IDE. During the report, several development environments will be presented, targeting not only the hardware, but also the software and the results of the final object. **

**Key-words: home automation; Arduino; IRremote; TSOP **

## Introdução

A crescente busca por dispositivos automatizados aquece o mercado de tecnologia em
todo mundo. Entretanto dispositivos de automação residencial ainda não se estabeleceram no
mercado brasileiro devido aos seus altos custos de produção quando equiparados ao poder de
compra médio. Pensando nisso foi concebido um dispositivo que pudesse trazer a automação
para a realidade brasileira.

A proposta desse trabalho é trazer um dispositivo de automativo de simples instalação
e uso a um baixo custo. Nesse intuito foi escolhida uma tecnologia robusta que propocionasse
tal advento, o a comunicação por infravermelho.

Os sensores infravermelhos utilizados na recepção de dados proporcionam uma série
de vantagens quando comparado a outros tipos de comunicação sem fio, como baixo custo,
simplicidade de implementação e sua baixa vulnerabilidade a ruídos externos, desse modo é
considerado um tipo de comunicação robusta (HAYKIN; VEEN, 2003).

Paralelo a isso, o controle remoto é um objeto comum a vários dispositivos eletrônicos
presentes no cotidiano, em sua maioria é comum encontrar teclas que não possuem nenhuma
funcionalidade, mas com este dispositivo é possível atribuir funcionalidade a tais teclas. Isso
se dá devido aos botões programáveis contidos no dispositivo, tornando assim possível a troca
de controles ou até mesmo uma melhor configurações de teclas. Ao manter-los pressionados,
esperarão receber um novo valor de tecla, passado pelo controle remoto e cadastra-lo-á.
Assim ao sempre que a tecla cadastrada for pressionada, será acionado algum
eletredoméstico, por ventura ligado ao dispositivo.

## Metodologia

No projeto foi utilizado um módulo de sensor infravermelho TSOP 1738
(TELEFUNKEN, 1998), permitindo a comunicação entre o Arduino (Arduino, 2017) e um
controle remoto. O modelo utilizado foi o Arduino Pro Mini, usado para recepção de dados
provenientes do TSOP e o controle de acionamentos que são possíveis por meio de relés,
resistores, transistores e diodos. Por conseguinte, foram utilizados dois botões para sinalizar a
gravação do botão desejado e um controle remoto genérico para ligar e desligar os
equipamentos conectados ao dispositivo desenvolvido.

A tecnologia de infravermelho é um protocolo de transmissão sem fio de dados usados
para controlar e operar diversos dispositivos. A transferência de dados de infravermelho é
implementada de acordo com os protocolos e os padrões da IrDA (Infrared Data Association). 
Esses padrões são projetados para aceitar componentes de baixo custo, reduzir a demanda de
energia e para ativar conexões simplesmente apontando dispositivos de infravermelho um para
o outro (BARKER, et al, 2002).

Em meio aos vários protocolos de comunicação IR existentes, todos possuem objetivos
em comum como: velocidade do canal completo, segurança, baixo custo, baixa manutenção,
circuitos de fácil implementação, mas diferenciam-se no modo de comunicação e na
transmissão dos dados tendo variações no número de instruções, tamanho da palavra de bits
transmitida, no consumo de energia, compatibilidade com dispositivos eletrônicos, faixa de
frequência de operação e etc. (HAYKIN; MOHER, 2010).

O protocolo Consumer Infrared (CIR) utiliza LEDs infravermelho que nada mais são
do que diodos emissores de luz no comprimento de onda do infravermelho, utiliza também
receptores infravermelhos de encapsulamento único, que são circuitos integrados
optoeletrônicos. Tais receptores possuem toda a etapa óptica, lente, transdutor, etapa
eletrônica, filtro passa-faixa e amplificador, necessária para realizar a recepção e demodulação
do sinal infravermelho sem maiores complicações (KAHN, 1994).

O Arduino Pro Mini foi utilizado dado que trata de uma plataforma de desenvolvimento
provisória destinada a protótipos. Possui quatorze portas digitais e seis portas as analógicas que
podem ser utilizadas para recepção e envio de dados. O modelo o ATmega168 possui tensão
de alimentação de 5V, com uma memória flash de apenas 16 KB, o que é suficiente para a
programação do dispositivo. Esse modelo de microcontrolador possui um clock de 16 MHz
que atendeu bem as necessidades do protótipo.

As portas digitais do circuito integrado ATmega168 funcionam na faixa de tensão de 0
a 5V. Desse modo as entradas digitais D2 e D3 receberão borda de subida quando uma chave
1 ou uma chave 2 for pressionada. No entanto, é necessário implementar um resistor de
pulldown e um capacitor debouncer, em paralelo, com o intuito de garantir que o as portas
digitais recebam unicamente borda de subida ou de descida. Isso é necessário para evitar o
efeito bouncing e erros de leitura pelas portas de entrada do microcontrolador. Este resistor
permite que, enquanto a chave não esteja pressionada, a porta digital permaneça em nível
baixo ativo. Quando a chave é pressionada, no nó entre o resistor e a chave, há 5V. Porém, se
a tensão variar por conta do efeito bouncing na chave, o capacitor mantém a tensão em 5V,
garantindo a borda de subida e diluindo o ruído no filtro.

O dispositivo relé atua como intermediador entre o microcontrolador e os aparelhos
que se desejam controlar. Este dispositivo é na verdade um interruptor que é acionado de
acordo com a corrente que percorre sua bobina, permitindo que o relé seja acionado, e
aparelhos que funcionam em elevadas tensões sejam controlados.
O microcontrolador foi programado utilizando a IDE Arduino, que é uma plataforma
de desenvolvimento de código aberto disponibilizada no GitHub. A plataforma pode ser
utilizada para a programação de qualquer Arduino utilizando a linguagem C e possui diversas
bibliotecas disponíveis para a integração de inúmeros módulos e sensores.
Para interfacear a comunicação infravermelha foi utilizada a biblioteca “IRremote”.
Após a inserção da biblioteca é necessário declarar o “IRrecev” responsável por ser o receptor
de dados, informando o pino o qual está conectado o TSOP, a partir deste ponto já estamos
aptos a receber os dados. Foi necessário também declarar o “decode_results” que é o
responsável por decodificar os dados enviados ao Arduino pela porta digital na qual está
conectada o TSOP.

A programação em C foi feita de modo estruturada, para projetos maiores também
pode ser feito o uso de orientação a objeto. O código foi escrito e refatorado de modo a ficar
de fácil manutenção, coeso e com um baixo acoplamento.
A função de reprogramação de teclas, por sua vez, é acionada por botões ligados a
portas digitais, que ao serem pressionados iniciam uma nova rotina de duração predefinida 
onde aguarda uma nova entrada de dados pelo TSOP em um tempo predefinido, caso seja
recebido algum valor pelo sensor esse novo valor será associado a variável de acionamento
que corresponda ao botão pressionado, caso não receba nenhum dado até o fim do tempo
definido, nada acontece.

### Indicativo de aplicabilidade
O aumento em busca de novas tecnologias que possam simplificar o uso de aparelhos eletrônicos no cotidiano propulsiona o mercado de automação e controle. E essa busca que inicialmente partiu para setor industrial excitou o público em geral a cada vez mais procurar itens que sejam automatizados, de modo que possa proporcionar um maior conforto em suas residências.  Pensando nessa necessidade de mercado foi idealizado um dispositivo de acionamento genérico, de modo a atender a diversas aplicações com um baixo custo de aquisição.

A comunicação infravermelha possui vantagens em meio a outras tecnologias de comunicação sem fio, como o baixo custo que foi um fator chave para a concepção de um protótipo que garante bons resultados a custos que tornam a automação residencial possível para o mercado brasileiro.  O dispositivo foi desenvolvido pensando em um ambiente como uma sala de tv ou quarto, para efetuar o controle de dispositivos comuns a estes ambientes em lares brasileiros como o um abajur e um ventilador. Assim ao efetuar o controle a distância, o dispositivo proporciona conforto ao usuário. Esta é a máxima agregadora de valor ao produto. 

## Resultados e Discussões 

A comunicação por infravermelho possui vantagens em meio a outras tecnologias de
comunicação sem fio, como o baixo custo que foi um fator chave para a concepção de um
protótipo que garante bons resultados a custos que tornam a automação residencial possível
para o mercado brasileiro.

Por se tratar de um protótipo, o circuito foi montado em uma placa perfurada de
fenolite, que é composta por uma matriz de furos e ilhas isoladas, de modo que as trilhas do
circuito são feitas utilizando preenchimento com solda eletrônica em locais onde há a
possibilidade de passagem de alta corrente ou fios para contatos de baixa corrente. Essa
escolha foi influenciada pela facilidade no desenvolvimento da placa, pois o processo de
desenvolvimento de uma placa de circuito impresso seria dispendioso e oneroso quanto a
criação do design. A distribuição de componentes foi pensada para otimizar o espaço a fim de
que o dispositivo pudesse ser encaixado na caixa idealizada.

Foi utilizado o conceito “design clean” (Aponto Design, 2016), onde se preza pelo
aspecto limpo com poucos ou nenhum ornamento, mantendo apenas aquilo é necessário,
causando de pouca a nenhuma interferência nos ambientes em que foram inseridos.

## Conclusão

O dispositivo foi desenvolvido pensando em um ambiente como uma sala de tv ou
quarto, para efetuar o controle de dispositivos comuns a estes ambientes em lares brasileiros
como o um abajur e um ventilador. Assim ao efetuar o controle a distância, o dispositivo
proporciona conforto ao usuário.
O protótipo desenvolvido está em uso a cerca de quatro meses em um ventilador de
uso diário, e desde então não foram constatadas nenhuma falha. O dispositivo desenvolvido
mostrou-se eficiente e econômico.
Os objetivos supracitados foram alcançados pelo protótipo, como a possibilidade de
ser adquirido por pessoas de baixo poder de compra e a difusão 

## Referência

1. Aponto Design, Clean não é Branco, 2016. Disponível em:
<http://apontodesign.com/blog/clean-nao-e-branco/>. Acesso em 20 de Abril de 2016.

2. Arduino, Language Reference, 2017. Disponível em:
<https://www.arduino.cc/en/Reference/HomePage>. Acesso em 20 de Abril de 2016

3. BARKER, P.; BOUCOUVALAS, A.C.; VITSAS, V. Performance modelling of the IrDA
infrared wireless communications protocol. In International Journal of Communication
Systems. 2002.

4. HAYKIN, S.; MOHER, M. Sistemas de Comunicação. Editora Bookman; 5ª Edição, 2010.
HAYKIN, S.; VEEN, B. V.; Signals and Systems. Editora John Wiley and Sons; 2ª Edição,
2003.

5. Vishay Telefunken. Photo Modules for PCM Remote Control Systems, TSOP17, datasheet,
Dez. 1998.

6. KAHN, J. M.; BARRY, J. R.. Wireless Infrared Communications. Springer US, 1994.
