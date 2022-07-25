SELECT 
	c.cancao_nome AS cancao,
    COUNT(c.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN 
	SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;