creamos el Trigger:
CREATE FUNCTION trigger_mayus( ) RETURNS TRIGGER AS $$
begin
NEW.password= lower(new.password);
return NEW;
end;
$$ language plpgsql;

create trigger triggre_minusculos
before insert or update on users
for each row
execute procedure trigger_mayus();

Agregar usuarios:

insert into users (ci, nombre, date_of_birth, email, edad, password)
values
(54846858, 'Douglas', '22/02/2002', 'douglaspere@gmail.com','23', 'DouglasP23');
insert into users (ci, nombre, date_of_birth, email, edad, password)
values
(54413858, 'Lucero', '12/08/2000', 'luceropere@gmail.com','33', 'LuceroP22');
insert into users (ci, nombre, date_of_birth, email, edad, password)
values
(85646846, 'Damaris', '10/09/1987', 'damarisalvarado@gmail.com','63', 'DamarisP13');
insert into users (ci, nombre, date_of_birth, email, edad, password)
values
(5484647, 'Douglas', '22/02/2002', 'douglaspere@gmail.com','23', 'DouglasP23')
