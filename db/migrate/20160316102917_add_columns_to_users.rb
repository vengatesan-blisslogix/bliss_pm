class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Mobile_No, :string
    add_column :users, :Office_Phone, :string
    add_column :users, :Home_Phone, :string
    add_column :users, :Profile_Photo, :string
    add_column :users, :Active, :string
  end
end
