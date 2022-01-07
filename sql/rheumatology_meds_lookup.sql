SELECT 'vmp' AS type, CAST(vmp.id AS STRING) AS id, bnf_code, vmp.nm, ing.nm AS ingredient, ddd.ddd 
FROM dmd.vmp
INNER JOIN dmd.vpi AS vpi ON vmp.id = vpi.vmp 
INNER JOIN dmd.ing as ing ON ing.id = vpi.ing 
LEFT JOIN dmd.ddd on vmp.id = ddd.vpid
WHERE ing.nm LIKE '%Adalimumab%'
   OR ing.nm LIKE '%Etanercept%'
   OR ing.nm LIKE '%Certolizumab%'
   OR ing.nm LIKE '%Infliximab%'
   OR ing.nm LIKE '%Golimumab%'
   OR ing.nm LIKE '%Rituximab%'
   OR ing.nm LIKE '%Tocilizumab%'
   OR ing.nm LIKE '%Sarilumab%'
   OR ing.nm LIKE '%Tofacitinib%'
   OR ing.nm LIKE '%Baricitinib%'
   OR ing.nm LIKE '%Upadacitinib%'
   OR ing.nm LIKE '%Filgotinib%'
   OR ing.nm LIKE '%Abatacept%'
   OR ing.nm LIKE '%Ipilimumab%'
   OR ing.nm LIKE '%Nivolumab%'
   OR ing.nm LIKE '%Pembrolizumab%'

