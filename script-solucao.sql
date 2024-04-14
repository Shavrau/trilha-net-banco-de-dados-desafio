SELECT NOME,Ano FROM Filmes

SELECT NOME,Ano FROM Filmes ORDER BY Ano ASC

SELECT NOME,Ano,Duracao 
FROM Filmes
WHERE NOME = 'de volta para o futuro'

SELECT NOME,Ano,Duracao 
FROM Filmes
WHERE ANO = 1997

SELECT NOME,Ano,Duracao 
FROM Filmes
WHERE ANO > 2000

SELECT NOME,Ano,Duracao 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

SELECT ano,COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano  

SELECT PrimeiroNome,UltimoNome,Genero
FROM Atores
WHERE Genero = 'M'

SELECT PrimeiroNome,UltimoNome,Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero  AS FG
ON (F.Id = FG.IdFilme)
INNER JOIN Generos AS G
ON (G.Id = FG.IdGenero)

SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero  AS FG
ON (F.Id = FG.IdFilme)
INNER JOIN Generos AS G
ON (G.Id = FG.IdGenero)
WHERE G.Genero = 'MISTÉRIO'


SELECT A.PrimeiroNome,A.UltimoNome,EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
ON (F.Id = EF.IdFilme)
INNER JOIN Atores AS A
ON (EF.IdAtor = A.Id)
Realizei as consultas pedidas
