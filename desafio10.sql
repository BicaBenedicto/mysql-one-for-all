SELECT
	c.cancao AS nome,
    COUNT(hR.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historicoReproducoes AS hR
WHERE c.cancao_id = hR.cancao_id
GROUP BY c.cancao
ORDER BY c.cancao;