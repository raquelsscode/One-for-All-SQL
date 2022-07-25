SELECT
	ROUND(MIN(v.valor_plano), 2) AS faturamento_minimo,
    ROUND(MAX(v.valor_plano), 2) AS faturamento_maximo,
    ROUND(AVG(v.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(v.valor_plano), 2) AS faturamento_total
FROM
	SpotifyClone.planos AS v
INNER JOIN
	SpotifyClone.usuarios AS u ON u.plano_id = v.plano_id;