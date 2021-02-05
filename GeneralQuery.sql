/*To update exsting parameter*/
update tbl_email_template set notification_parameters = CONCAT(SUBSTRING(notification_parameters, 1, LEN(notification_parameters)-1),',"inspectorCellPhoneNumber"]'),
updated_at= GETUTCDATE() where notification_event_type_id = 22 and notification_type_id=3;

