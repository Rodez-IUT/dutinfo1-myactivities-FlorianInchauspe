create or replace function add_activity_with_title(title varchar(200)) returns bigint as $$
    insert into activity (id, title) values (nextval('id_generator'),add_activity_with_title.title) returning id;
$$ language sql;