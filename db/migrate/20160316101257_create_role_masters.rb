class CreateRoleMasters < ActiveRecord::Migration
  def change
    create_table :role_masters do |t|
      t.string :Role_Name
      t.string :Active

      t.timestamps null: false
    end
  end
end
