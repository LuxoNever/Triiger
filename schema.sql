Creamos Tabla:
create table users(
 CI integer primary key,
 nombre varchar (20),
 date_of_birth date,
 correo varchar (20),
 edad int
)


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

