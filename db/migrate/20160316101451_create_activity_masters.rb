class CreateActivityMasters < ActiveRecord::Migration
  def change
    create_table :activity_masters do |t|
      t.string :Activity_Name
      t.string :Active

      t.timestamps null: false
    end
  end
end
