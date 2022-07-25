SELECT 
	u.usuario_nome AS usuario,
    IF(MAX(YEAR(h.data_de_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM 
	SpotifyClone.usuarios AS u
INNER JOIN
	SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome ASC;