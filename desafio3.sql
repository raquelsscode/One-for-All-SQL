SELECT 
  u.usuario_nome  AS usuario,
  COUNT(i.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(DISTINCT c.duracao_segundos)/60, 2)  AS total_minutos
FROM
  SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS i
  ON u.usuario_id = i.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
  ON r.cancao_id = c.cancao_id
GROUP BY
  usuario