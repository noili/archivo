class AddFileRecordToStep < ActiveRecord::Migration
  def change
    add_column :steps, :file_record_id, :integer
    add_index :steps, :file_record_id
    remove_column :steps, :record_id
  end
end
