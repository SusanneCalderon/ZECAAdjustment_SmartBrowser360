-- update ad_modelvalidator as it was at the beginning
update ad_modelvalidator set isactive='Y' where ad_modelvalidator_id in
(1000005, 1000002, 1000003, 1000001, 1000000, 1000004, 1000006, 1000012, 1000007, 1000008, 1000011, 50006, 50000);

-- update ad_rule  as it was at the beginning
update ad_rule set isactive='Y' where ad_rule_id NOT IN(1000000, 1000055);


