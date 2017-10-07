class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :account
      t.string :name
      t.string :institute
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
