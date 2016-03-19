# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#add super admin
u = User.create(email: 'superadmin@yourcompany.com',
                name: 'Admin',                
                password: 'passw0rd',
                password_confirmation: 'passw0rd',
                Active: 1               
                )
u.save!
#Add super admin Role
r = RoleMaster.create(role_name: "Super Admin", active: 1)

#Add activity
["Add Role", "Add Company", "Add Clients", "Add Clients Source", "Add Users", "Add Activity", "Add Branch", "Add Project", "Add Project User", "Add Release Planning", "Add Sprint Planning", "Add Project Task", "Add Task Status Master", "Add Project Status Master", "Add Project Timesheet"].each do |am|
 a = ActivityMaster.create(Activity_Name: "#{am}", Active: 1)
 RoleActivityMapping.create(role_master_id: r.id, activity_master_id: a.id, access_value: 1, user_id: u.id, active: 1)
end

#Add company
c = Company.create(Company_Name: 'Your company name',
	            Email: 'user@yourcompany.com',                
                Mobile: '044-77777777'                
                )
c.save!
#Add branch 
b = Branch.create(name: 'Main Branch')
u.update_attributes(:branch_id=>b.id, :company_id=>c.id, :role_master_id=>r.id)





