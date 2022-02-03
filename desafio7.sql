SELECT
	a.artista AS artista,
    alb.album AS album,
    COUNT(uS.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.albuns AS alb
JOIN SpotifyClone.usuariosSeguindoArtistas AS uS
WHERE a.artista_id = alb.artista_id
AND alb.artista_id = uS.artista_id
GROUP BY a.artista_id, alb.album
ORDER BY seguidores DESC, a.artista, alb.album;