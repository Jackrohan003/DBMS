WITH t2 AS
(
  SELECT user_id, profile_completed_percentage,value
    FROM tbl_user as t1 Inner Join tbl_compliance_form_data as t3 on t1.user_id=t3.inspector_user_id 
   WHERE role_id=3 AND (profile_completed_percentage >=51 AND  profile_completed_percentage <=99) 
   AND ( t3.compliance_form_key_id in(2) AND t3.value IS NOT NULL and t3.value !='') 
),
insid as(
select Distinct (t2.user_id) from t2 join tbl_compliance_form_data as t4 on t2.user_id=t4.inspector_user_id 
where NOT EXISTS
(
	select * from tbl_compliance_form_data where compliance_form_key_id=53 and inspector_user_id=t2.user_id
)
)

insert into tbl_compliance_form_data(value,compliance_form_key_id,inspector_user_id,created_at,created_by,updated_at,updated_by,is_deleted)
 select 'true',53,a2.user_id,GETUTCDATE(),a2.user_id,GETUTCDATE(),a2.user_id,0 from insid as a2 
