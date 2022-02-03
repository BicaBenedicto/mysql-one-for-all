SELECT
  c.cancao AS cancao,
  COUNT(hP.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historicoReproducoes AS hP
WHERE c.cancao_id = hP.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao LIMIT 2;