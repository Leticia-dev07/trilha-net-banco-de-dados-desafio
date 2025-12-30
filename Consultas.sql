SELECT 
    Nome,
    Ano
FROM Filmes;


SELECT 
    Nome,
    Ano
FROM Filmes
ORDER BY Ano ASC;


SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';


SELECT 
    Nome,
    Ano
FROM Filmes
WHERE Ano = 1997;

SELECT 
    Nome,
    Ano
FROM Filmes
WHERE Ano > 2000;


SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100
  AND Duracao < 150
ORDER BY Duracao ASC;

SELECT 
    Ano,
    COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;

SELECT 
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'M';


SELECT 
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;


SELECT 
    F.Nome AS Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;

SELECT 
    F.Nome AS Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

SELECT 
    F.Nome AS Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor
ORDER BY EF.Id;