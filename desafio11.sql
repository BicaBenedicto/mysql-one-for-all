SELECT
	c.cancao AS nome_musica,
    CASE
		WHEN c.cancao LIKE '%Streets%' THEN REPLACE(cancao, 'Streets', 'Code Review')
        WHEN c.cancao LIKE '%Her Own%' THEN REPLACE(cancao, 'Her Own', 'Trybe')
        WHEN c.cancao LIKE '%Inner Fire%' THEN REPLACE(cancao, 'Inner Fire', 'Project')
        WHEN c.cancao LIKE '%Silly%' THEN REPLACE(cancao, 'Silly', 'Nice')
        WHEN c.cancao LIKE '%Circus%' THEN REPLACE(cancao, 'Circus', 'Pull Request')
        ELSE c.cancao
	END AS novo_nome
FROM SpotifyClone.cancoes AS c
WHERE cancao REGEXP 'Streets|Her Own|Inner Fire|Silly|Circus'
ORDER BY c.cancao;