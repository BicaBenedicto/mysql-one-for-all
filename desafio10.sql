SELECT
	c.cancao AS nome,
    COUNT(hR.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historicoReproducoes AS hR
JOIN SpotifyClone.usuarios AS u
WHERE c.cancao_id = hR.cancao_id
AND u.plano_id IN (1, 4)
AND u.usuario_id = hR.usuario_id
GROUP BY c.cancao
ORDER BY c.cancao;