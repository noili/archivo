class AddForeignKeys < ActiveRecord::Migration
  def change
    add_column :steps, :record_id, :integer
    add_column :steps, :person_id, :integer
    add_column :steps, :office_id, :integer
    add_index :steps, :record_id
    add_index :steps, :person_id
    add_index :steps, :office_id
  end
end
