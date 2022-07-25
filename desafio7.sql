SELECT 
  a.artista_nome  AS artista,
  b.album_nome  AS album,
  COUNT(i.usuario_id) AS seguidores
FROM
  SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
  ON b.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguindo AS i
  ON i.artista_id = a.artista_id
GROUP BY
  artista,album
ORDER BY seguidores DESC, artista, album;