SELECT
  u.usuario,
  COUNT(hP.cancao_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historicoReproducoes AS hP
JOIN SpotifyClone.cancoes AS c
WHERE u.usuario_id = hP.usuario_id
AND hP.cancao_id = c.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;