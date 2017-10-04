class ChangeForBatches < ActiveRecord::Migration[5.1]
  def change
    rename_column :batches,:type,:project_type
  end
end
