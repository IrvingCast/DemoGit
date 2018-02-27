SELECT tCoches.matricula,
   tMarcas.marca,
   tCoches.modelo,
   tCoches.color,
   tCoches.numero_kilometros,
   tCoches.num_plazas
FROM tCoches
INNER JOIN tMarcas ON tCoches.marca = tMarcas.codigo
UNION
SELECT tMotos.matricula,
   tMarcas.marca,
   tMotos.modelo,
   tMotos.color,
   tMotos.numero_kilometros,
   0
FROM tMotos
INNER JOIN tMarcas ON tMotos.marca = tMarcas.codigo;