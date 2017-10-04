class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.string :type
      t.integer :year
      t.integer :stage

      t.timestamps
    end
  end
end
