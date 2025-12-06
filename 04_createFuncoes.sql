--ordenar--

select * from pet
Order by nome;

select * from consulta
Order by data ASC;

--quantas consultas cada veterinario fez--

Select
    v.nome AS Veterinario,
    COUNT(c.id_consulta) AS Total_consulta
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
ORDER BY v.nome;

Select
    v.nome AS Veterinario,
    COUNT(c.id_consulta) AS Total_consulta
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
GROUP BY v.nome
HAVING COUNT(c.id_consulta) <3
ORDER BY v.nome;