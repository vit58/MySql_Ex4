use vk;
show TABLES;
select * from users limit 100;
select  * from users where created_at > update_at;-- ���������� ������ ��� ������ ��� update ����� ������ ��� ���� created
update users set update_at = NOW() where created_at > update_at; -- ������ �� ����������

select * from profiles limit 10;
select  * from profiles where created_at > update_at;-- ���������� ������ ��� ������ ��� update ����� ������ ��� ���� created
update profiles set update_at = NOW() where created_at > update_at; -- ������ �� ����������
-- update profiles set gender = '';
-- CREATE temporary table genders (name CHAR(1));
-- insert into genders values ('F'), ('M');
-- select * from genders;
-- select name from genders order BY RAND() limit 1; -- �������� �������� ���� F � M ��������� �������
-- update profiles set gender = (select name from genders order BY RAND() limit 1); -- ������ �� ����������


select * from messages limit 10;
-- select FLOOR (1 + RAND() * 100);
-- update messages set
-- from_user_id = FLOOR (1 + RAND() * 100),
-- to_user_id = FLOOR (1 + RAND() * 100);
-- select * from messages where from_user_id = to_user_id;
-- update messages set to_user_id = to_user_id + 1 where from_user_id = to_user_id;


select * from media limit 20;
-- update media set
-- user_id = FLOOR (1 + RAND() * 100);

-- ������� filename 
-- ��� ����� ����������? 
-- http://dropbox.com/vk/filename.ext ����������� ����: �����������������.��������� ����������
CREATE temporary table extensions (name VARCHAR(10)); -- ������� ��������� �������
insert into extensions values ('mp4'), ('mp3'), ('png'), ('avi');
select * from extensions;-- ��������� ������� ���������� �������
-- ��������� �������� ������ 
update media  set filename = concat(
-- ������� concat(���������� ��� ���� ���������, ������������� ����� ������� � ���� ������)
'http://dropbox.com/vk/',
filename,
'.',
(select name from extensions order BY RAND() limit 1))-- ������ ����������
;

-- ������� size
-- update media set size = FLOOR (1000 + RAND() * 1000000000 where sise < 10000);


-- ������ ���������� ���-�� �����: '{"ouner": "Ferst Last"}', �.�. '{"����": "�������� -��� �������"}'
update media set metadata = CONCAT(
'{"ouner": "',
(select CONCAT(first_name, ' ', last_name) 
from users where users.id = media.user_id),
'"}'
);
select * from media limit 20;
-- ���������� ��������� �������, 
desc media;
alter table media modify COLUMN metadata JSON;

-- ������� media_types, ������� media_types_id
select * from media_types;
delete from media_types;
insert into media_types (name) values
('image'),
('audio'),
('video');
TRUNCATE media_types;
update media set;
media_type_id =FLOOR(1 + RAND() * 3);


-- ������� frendship
select * from friendship limit 10;
-- update friendship set
-- user_id = FLOOR (1 + RAND() * 100),
-- friend_id = FLOOR (1 + RAND() * 100);
select * from friendshep_statuses;-- ����� 8 ��������. �����! �������, � ���������� ���
TRUNCATE friendshep_statuses;
insert into friendshep_statuses (name) values
('Requested'),
('Confirmed'),
('Rejected');
select * from friendship;
update friendship set
friend_status_id = FLOOR(1 + RAND() * 3);
update friendship  SET
confirmed_at = created_at,
created_at = confirmed_at;
-- WHERE user_id = 3 AND friend_id = 7;


-- ������� ����� (communities)
select * from communities;
-- DELETE from communities where id > 30;


-- ������� ����� (communities_users)
select * from communities_users;
update communities_users set
user_id = FLOOR (1 + RAND() * 100),
communities_id = FLOOR (1 + RAND() * 30);


