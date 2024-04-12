#PART 4A
##Query 1
Select business_name ,  sum(license_beds) from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
order by 2 desc limit 10;


##Query 2
Select business_name as Hospital_name, sum(census_beds) as Total_beds from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
order by 2 desc limit 10;

##Query 3
Select business_name as Hospital_name,  sum(staffed_beds) as Total_beds from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
order by 2 desc limit 10;



#PART 5A
##Query 1
Select business_name ,  sum(license_beds) from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
having COUNT(b.bed_id) > 1
order by 2 desc limit 10;


##Query 2
Select business_name as Hospital_name, sum(census_beds) as Total_beds from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
having COUNT(b.bed_id) > 1
order by 2 desc limit 10;

##Query 3
Select business_name as Hospital_name,  sum(staffed_beds) as Total_beds from bed_fact as b inner join
business as s on b.ims_org_id = s.ims_org_id
where bed_id= 4 or bed_id = 15
group by b.ims_org_id
having COUNT(b.bed_id) > 1
order by 2 desc limit 10;

