SELECT 
  c.cancao_nome  AS nome,
  COUNT(h.cancao_id) AS reproducoes
FROM
  SpotifyClone.cancoes AS c 
INNER JOIN SpotifyClone.historico AS h
  ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
  ON u.usuario_id = h.usuario_id
  WHERE plano_id = 1 OR plano_id = 4
  GROUP BY nome 
  ORDER BY nome;