update tbl_email_template set notification_parameters = REPLACE(notification_parameters, '"NPI"', '"Npi"')
where notification_event_type_id =13 and notification_type_id in(2,3);
