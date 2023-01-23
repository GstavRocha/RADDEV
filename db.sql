create VIEW ver_post
as 
SELECT p.txt_post,u.name_user,p.date_post from tb_post as p
inner join tb_user as u 
on p.cod_user=u.cod_user;

CREATE VIEW up_grup_post
as 
 SELECT p.txt_post, u.name_user, p.date_post  from tb_post as p 
 inner join tb_user as u 
 on p.cod_user = u.cod_user
 GROUP by cod_post
 ORDER BY cod_post DESC;

DELIMITER $$
CREATE PROCEDURE sp_listar_posts (IN sp_cod INT)
BEGIN
   IF sp_cod = 0 THEN
      SELECT * FROM up_grup_post;
   ELSE
      SELECT * FROM tb_post WHERE cod_user = sp_cod;
   END IF;  

END $$
DELIMITER ;
create view ver_todos_relacionado2 as
SELECT p.cod_user,u.name_user,p.date_post from tb_post as p 
inner join tb_user as u 
where p.cod_origin_post
GROUP by p.txt_post
order BY p.cod_origin_post desc;
