class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_name
      t.integer :member_type
      t.integer :inactive

      t.timestamps null: false
    end
  end
end
