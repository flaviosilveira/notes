# Neo4J

Nodes
Proporties: name:value
Labels

Relationships
- Always have direction
- Always have type
- Can also contain properties

Create
CREATE (GuardaRoupa3Portas:Furne {id:'75138', name:'Guarda Roupa 3 portas de correr'})
CREATE (Comoda5Gavetas:Furne {id:'139554', name:'Comoda 5 gavetas'})
CREATE (EstanteMontessoriano:Furne {id:'163301', name:'Estante Montessoriano'})
CREATE (EstanteComNichos:Furne {id:'180223', name:'Estante com nichos'})
CREATE (BanquinhoInfantil:Furne {id:'147921', name:'Banquinho Infantil'})

CREATE (ax445566:Visitor {id:'ax445566'})
CREATE (df556677:Visitor {id:'df556677'})
CREATE (hj665588:Visitor {id:'hj665588'})
CREATE (kj889763:Visitor {id:'kj889763'})

CREATE
	(ax445566)-[:VIEW {date:'2016-10-05'}]->(GuardaRoupa3Portas),
	(ax445566)-[:VIEW {date:'2016-10-05'}]->(Comoda5Gavetas),
	(ax445566)-[:VIEW {date:'2016-10-05'}]->(EstanteMontessoriano),
	(df556677)-[:VIEW {date:'2016-10-05'}]->(Comoda5Gavetas),
	(hj665588)-[:VIEW {date:'2016-10-05'}]->(GuardaRoupa3Portas),
	(hj665588)-[:VIEW {date:'2016-10-05'}]->(EstanteComNichos),
	(hj665588)-[:VIEW {date:'2016-10-05'}]->(BanquinhoInfantil),
	(kj889763)-[:VIEW {date:'2016-10-05'}]->(GuardaRoupa3Portas),
	(kj889763)-[:VIEW {date:'2016-10-05'}]->(Comoda5Gavetas),
	(kj889763)-[:VIEW {date:'2016-10-05'}]->(EstanteMontessoriano),
	(kj889763)-[:VIEW {date:'2016-10-05'}]->(EstanteComNichos),
	(kj889763)-[:VIEW {date:'2016-10-05'}]->(BanquinhoInfantil)
;

Equivalente ao Select
MATCH (a {name: "Tom Hanks"}) RETURN a

Equivalente Select campo Limit 10
MATCH (a:Person) RETURN a.name LIMIT 10
MATCH (a:Movie) RETURN a.title LIMIT 10

Equivalente Select title WHERE ano > 1990 AND ano < 2000
MATCH (a:Movie) WHERE a.released > 1990 AND a.released < 2000 RETURN a.title

Busca do dentro para fora
Filmes que ator atuou
variáveis a para ator e aMovies para os filmes
Retorna o node com as ligações, porque aqui estamos retornando o objeto
MATCH (a {name:"Tom Hanks"}) -[:ACTED_IN]->(aMovies) RETURN a,aMovies
Se retornar apenas aMovies apenas, vem os nodes dos filmes soltos
Reparar que é como se desenhasse uma seta na query -[:relantioship]->

Busca de fora para dentro
Quem dirigiu o filme
Variáveis a para o filme, dt para os diretores.
Retorna listagem, porque estamos retornando a propriedade do node
MATCH (a {title:"Cloud Atlas"})<-[:DIRECTED]-(dt) RETURN dt.name
Aqui a seta é ao contrário, uma vez que é de fora pra dentro

Busca onde tom atuou, e quem atuou com ele
MATCH(a {name:"Tom Hanks"})-[:ACTED_IN]->(x)<-[:ACTED_IN]-(co) RETURN co.name

Busca as relações com um node principal
MATCH (p:Person)-[x]-(:Movie {title:"Cloud Atlas"}) RETURN p.name, Type(x), x

Bacon
MATCH (b:Person {name:"Kevin Bacon"})-[*1..4]-(h) RETURN DISTINCT h

MATCH p=shortestPath(
  (b:Person {name:"Kevin Bacon"})-[*]-(t:Person {name:"Tom Hanks"})
)
RETURN p

Relationship
MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors),
      (coActors)-[:ACTED_IN]->(m2)<-[:ACTED_IN]-(cocoActors)
WHERE NOT (tom)-[:ACTED_IN]->(m2)
RETURN cocoActors.name AS Recommended, count(*) AS Strength ORDER BY Strength DESC
MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors),
      (coActors)-[:ACTED_IN]->(m2)<-[:ACTED_IN]-(cruise:Person {name:"Tom Cruise"})
RETURN tom, m, coActors, m2, cruise
