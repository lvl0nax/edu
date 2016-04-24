class AddIdsColumns < ActiveRecord::Migration
  def change
    drop_table :subjects_providers
    add_column :providers, :subject_ids, :integer, array: true
    add_column :providers, :direction_ids, :integer, array: true
  end
end
