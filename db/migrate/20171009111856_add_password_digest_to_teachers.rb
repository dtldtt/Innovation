class AddPasswordDigestToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :password_digest, :string
    add_index :teachers,:account,unique:true
  end
end
