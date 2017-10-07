class AddIndexToStudentAccount < ActiveRecord::Migration[5.1]
  def change
    add_index :students, :account, unique: true
  end
end
