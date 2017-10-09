class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :account
      t.string :name
      t.string :institute
      t.string :phone
      t.string :email
      t.boolean :isExpert
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
