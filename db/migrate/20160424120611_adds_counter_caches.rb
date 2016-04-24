class AddsCounterCaches < ActiveRecord::Migration
  def change
    add_column :subjects, :courses_count, :integer, default: 0
    add_index :providers, :direction_ids, using: 'gin'
    add_index :providers, :subject_ids, using: 'gin'
  end
end
