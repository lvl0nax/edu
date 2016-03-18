class CreateSubjectsProviders < ActiveRecord::Migration
  def change
    create_table :subjects_providers do |t|
      t.integer :subject_id
      t.integer :provider_id

      t.timestamps null: false
    end
    add_index :subjects_providers, [:subject_id, :provider_id], unique: true
  end
end
