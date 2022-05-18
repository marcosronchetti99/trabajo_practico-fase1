DELIMITER //

create trigger liquidacion_insert before insert on liquidacion_mensual 
for each row
begin
declare v_valor bigint;

set v_valor = (select valor  from numerador where clave  = 'LIQUIDACION');
set new.liquidacion_id = v_valor ;
set v_valor = v_valor+1;

update numerador set valor = v_valor  where clave  = 'LIQUIDACION';

end;
//