class ChangeColumnNameToRoleMaster < ActiveRecord::Migration
  def change
         rename_column :role_masters, :Role_Name, :role_name
         rename_column :role_masters, :Active, :active
  end
end
