SELECT
	a.artista AS artista,
    alb.album AS album
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.albuns AS alb
WHERE a.artista_id = alb.artista_id
AND a.artista = "Walter Phoenix"
GROUP BY a.artista, alb.album
ORDER BY alb.album;