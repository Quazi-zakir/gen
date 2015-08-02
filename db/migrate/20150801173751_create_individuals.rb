class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :inactive
      t.belongs_to :member, index: true

      t.timestamps null: false
    end
    add_foreign_key :individuals, :members
  end
end
