class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :Company_Name
      t.string :Display_Name
      t.string :Web_Address
      t.string :First_Address
      t.string :Second_Address
      t.string :City
      t.string :State
      t.string :Country
      t.string :Zip_Code
      t.string :Region
      t.string :Email
      t.string :Mobile
      t.string :Phone1
      t.string :Phone2
      t.string :Fax
      t.string :Skype
      t.integer :Star_Rating
      t.string :Active
      t.string :Comments
      t.string :Company_Logo

      t.timestamps null: false
    end
  end
end
