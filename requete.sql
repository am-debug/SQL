1)SELECT 'NUMMEDCIN' ,'nom' FROM `medecin`, `specialite` WHERE medecin.NUMSPECIALITE=specialite.NUMSPECIALITE AND specialite.NUMSPECIALITE='s1'
2) SELECT * FROM `specialite`
3) SELECT NUMMALADE ,NOM , DATE_DE_NAISSANCE_ FROM `malade` WHERE malade.SEXE='masculin' ORDER BY DATE_DE_NAISSANCE_ DESC 
 
4) SELECT NUMMALADE ,NOM , DATE_DE_NAISSANCE_ FROM `malade` WHERE malade.SEXE='feminin' AND ADRESSE LIKE '%p%'ORDER BY malade.NOM ASC 
 
5) SELECT malade.NUMMALADE, NOM, DATE_DE_NAISSANCE_ FROM `malade`, occupe , lit, chambre WHERE malade.NUMMALADE=occupe.NUMMALADE and occupe.NUMLIT=lit.NUMLIT and lit.NUMCHAMBRE=chambre.NUMCHAMBRE
6) SELECT malade.NUMMALADE, malade.NOM , DATE_DE_NAISSANCE_ FROM `malade`, interner , departement WHERE malade.NUMMALADE=interner.NUMMALADE and interner.NUMDEPARTEMEN=departement.NUMDEPARTEMEN and DATE_DE_NAISSANCE_ = '2012-04-22' 
7) SELECT malade.NUMMALADE, malade.NOM , malade.DATE_DE_NAISSANCE_ FROM `malade`, suivre , medecin WHERE malade.NUMMALADE=suivre.NUMMALADE and suivre.NUMMEDCIN=medecin.NUMMEDCIN and medecin.NOM='M3'
8) SELECT malade.NUMMALADE, malade.NOM , DATE_DE_NAISSANCE_ FROM `malade`, suivre , medecin ,occupe, lit WHERE malade.NUMMALADE=suivre.NUMMALADE and suivre.NUMMEDCIN=medecin.NUMMEDCIN and medecin.NOM='M3' and lit.NUMLIT=21 

9) SELECT malade.NUMMALADE, malade.NOM , malade.DATE_DE_NAISSANCE_ FROM `malade` ,occupe , lit WHERE malade.NUMMALADE=occupe.NUMMALADE and lit.NUMLIT=21 

10) SELECT * FROM `malade` ,feuiledevolution WHERE malade.NUMMALADE=feuiledevolution.NUMMALADE and feuiledevolution.NUMMALADE=11 

11) SELECT interner.NUMDEPARTEMEN, departement.NOM, COUNT( interner.NUMDEPARTEMEN) FROM interner, departement WHERE interner.NUMDEPARTEMEN=departement.NUMDEPARTEMEN GROUP BY (interner.NUMDEPARTEMEN)
12) SELECT malade.NUMMALADE ,malade.NOM, malade.ADRESSE, medecin.NOM FROM `malade`, suivre ,medecin, departement, interner WHERE malade.NUMMALADE=suivre.NUMMALADE and suivre.NUMMEDCIN=medecin.NUMMEDCIN and medecin.NUMDEPARTEMEN=departement.NUMDEPARTEMEN and departement.NOM='d2'
13) SELECT malade.NUMMALADE ,malade.NOM, malade.ADRESSE, interner.date FROM `malade`,interner WHERE malade.NUMMALADE=interner.NUMMALADE and (MONTH(interner.date)=2 OR 12)
14) SELECT chambre.NUMCHAMBRE, chambre.CATEGORIE, chambre.TYPE, COUNT(occupe.NUMMALADE)as plusoccupe FROM lit JOIN chambre on lit.NUMCHAMBRE=chambre.NUMCHAMBRE JOIN occupe ON occupe.NUMLIT=lit.NUMLIT group by lit.NUMCHAMBRE ORDER BY plusoccupe DESC LIMIT 1 

15) SELECT departement.NUMDEPARTEMEN,departement.NOM, COUNT(malade.NOM) AS NOMBRE FROM departement JOIN interner on interner.NUMDEPARTEMEN=departement.NUMDEPARTEMEN JOIN malade ON malade.NUMMALADE=interner.NUMMALADE group by interner.NUMMALADE order by NOMBRE DESC LIMIT 1 
16) SELECT departement.NUMDEPARTEMEN,departement.NOM, COUNT(malade.NOM) AS NOMBRE FROM departement JOIN interner on interner.NUMDEPARTEMEN=departement.NUMDEPARTEMEN JOIN malade ON malade.NUMMALADE=interner.NUMMALADE group by interner.NUMMALADE order by NOMBRE DESC LIMIT 1 
17) SELECT medecin.NUMMEDCIN, medecin.NOM, medecin.NUMSPECIALITE ,COUNT(malade.NUMMALADE) as nbrsuivits FROM medecin JOIN suivre ON medecin.NUMMEDCIN=suivre.NUMMEDCIN JOIN malade ON malade.NUMMALADE=suivre.NUMMALADE ORDER by medecin.NUMMEDCIN ASC LIMIT 1 

18) SELECT malade.NUMMALADE,malade.NOM, malade.ADRESSE, malade.SEXE, malade.DATE_DE_NAISSANCE_,malade.LIEUNAISSANCE FROM malade JOIN occupe on malade.NUMMALADE=occupe.NUMMALADE JOIN lit on occupe.NUMLIT=lit.NUMLIT JOIN chambre on chambre.NUMCHAMBRE=lit.NUMCHAMBRE JOIN suivre on malade.NUMMALADE=suivre.NUMMALADE JOIN medecin on suivre.NUMMEDCIN=medecin.NUMMEDCIN JOIN specialite where specialite.nom='S2' 
19) SELECT ETAT FROM feuille f JOIN departement d ON f.IDDEP=d.IDDEP JOIN interner i on i.IDDEP=D.IDDEP where year(i.DATE)=2020 and MONTH(i.DATE)=6 ORDER BY I.DATE LIMIT 1 
20)	SELECT DISTINCT lit.IDLIT FROM LIT, occuper WHERE LIT.IDLIT NOT IN (SELECT occuper.IDLIT FROM occuper WHERE MONTH(occuper.DATE)=3)


