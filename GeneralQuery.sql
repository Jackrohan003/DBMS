/*To update exsting parameter*/
update tbl_email_template set notification_parameters = CONCAT(SUBSTRING(notification_parameters, 1, LEN(notification_parameters)-1),',"inspectorCellPhoneNumber"]'),
updated_at= GETUTCDATE() where notification_event_type_id = 22 and notification_type_id=3;

/*In clause in SQL */
select * from tbl_email_template where notification_event_type_id IN (45,46,47,62) and notification_type_id=3


