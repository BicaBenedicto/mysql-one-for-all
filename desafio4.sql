SELECT
  u.usuario,
  IF(MAX(YEAR(hP.data_reproducao) > 2020), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historicoReproducoes AS hP
WHERE u.usuario_id = hP.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario;