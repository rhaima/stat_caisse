SELECT  date_,    nom_caissier ,count(*)
FROM ALDI.visite v
inner join ALDI.commune c on v.commune_id = c.id and magasin_id=36
group by date_,   nom_caissier


select Temp.nom_caissier, sum(Temp.Clients), sum(Temp.Autres)
from
(SELECT      V.nom_caissier as 'nom_caissier', 
             A.nom_caissier as  'nom_caissier2', 
             count(V.id) as 'Clients', 
             count(A.id) as 'Autres'
FROM ALDI.visite V
LEFT OUTER JOIN ALDI.visite A on V.id = A.id and A.commune_id = 1
where V.magasin_id=20 and STR_TO_DATE(V.date_, '%d-%m-%Y') > STR_TO_DATE('20192802', '%Y%d%m')
group by    V.nom_caissier, A.nom_caissier) Temp
Group by Temp.nom_caissier;



SELECT      nom_caissier ,count(*)
FROM ALDI.visite v
 where magasin_id=20
group by    nom_caissier

SELECT    nom_caissier,   count(*)
FROM ALDI.visite v
where  commune_id=1  and magasin_id=20
group by   nom_caissier  
   
/*maj num 1*/
/*tester les branches de git */
/*final test*/