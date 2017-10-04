class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to :batch,index:true
      t.string :name
      t.string :tutor
      t.string :expert
      t.integer :funds
      t.string :institute
      t.string :leader
      t.integer :status

      t.timestamps
    end
  end
end
