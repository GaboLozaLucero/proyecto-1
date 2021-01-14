DELIMITER $$
	CREATE TRIGGER add_new_user AFTER INSERT ON user
	FOR EACH ROW
    BEGIN
		
		declare com_id int;
        set @com_id := (SELECT a.company_id FROM user a WHERE a.user_id = new.user_id);
        
        if(@com_id = 1) then insert into user_role(`user_id`, `role_id`) values (new.user_id, 1);
                
        end if;
        
        if(@com_id = 2) then insert into user_role(`user_id`, `role_id`) values (new.user_id, 2);
                
        end if;
        
        if(@com_id > 2) then insert into user_role(`user_id`, `role_id`) values (new.user_id, 3);
                
        end if;

	end
$$
DELIMITER ;

drop trigger add_new_user;