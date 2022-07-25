SELECT 
  a.artista_nome  AS artista,
  b.album_nome  AS album
FROM
  SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
  ON b.artista_id = a.artista_id
  WHERE a.artista_nome = 'Walter Phoenix'
GROUP BY
  artista,album;