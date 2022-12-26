# Solução do desafio Refera

A forma que foi feita o carregamento de dados foi com a janela de encaixe clonando e rodando o docker compose up, com a utilização do link HTTPS e Docker desktop. Segue print do container:

![Capturar](https://user-images.githubusercontent.com/121297339/209567537-a484cd3a-5ff7-471e-9463-98785c71a644.PNG)



## Pergunta 1:
O raciocínio lógico utilizado para a solução da pergunta foi, inicialmente integrar as tabelas de inventário, aluguel e filme, pois elas contêm as informações necessárias para chegarmos ao resultado desejado. Após essa etapa, identifique o título dos filmes e conte quantas vezes cada um foi alugado com o id rental, além de utilizar group by para tal, foi utilizado order by para colocar os dados em ordem e desc. Para ser de forma decrescente e limite para ser selecionado somente às duas primeiras linhas, ou seja, assim realizadas no top 2.

## Pergunta 2:

A primeira etapa a ser solucionada foi a identificação dos 16 filmes mais alugados utilizando técnica similar a pergunta de número 1, com pequenas modificações, dessa forma com o auxílio do left join somente com essas informações filmes. Diante disso, reunimos informações dos 16 filmes mais alugados com as mesas ator e film_actor, para termos informações somente dos 16 filmes mais alugados, filtramos com a ajuda da função where. Com isso, temos o nome completo do ator utilizando concatenar e quantidade de filmes em que atuou, entretanto, a pergunta necessita somente do nome em sua saída, dessa forma com o auxílio do id_actor e um novo select obtemos o resultado desejado.



## Pergunta 3:

A linha de pensamento para a resolução do desafio de número 3, foi inicialmente pensada em selecionar os cliente e sua primeira data de aluguel, com as mesas rental e customer temos o cliente sua data de primeiro aluguel, nesse select também foi feita a transformação da data para o formato com mês e ano com o auxílio da função to_char. Logo em seguida participe com grupo contando quantos clientes novos tem por cada mês, para assim obter o que se pede no desafio.
