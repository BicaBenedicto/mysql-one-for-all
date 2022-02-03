SELECT
  COUNT(hR.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historicoReproducoes AS hR
JOIN SpotifyClone.usuarios AS u
WHERE u.usuario = "Bill"
AND hR.usuario_id = u.usuario_id;