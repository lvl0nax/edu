class AddMissedColumns < ActiveRecord::Migration
  def change
    add_column :directions, :subject_id, :integer
    add_column :directions, :seo_title, :string
    add_column :directions, :seo_keywords, :string
    add_column :directions, :seo_description, :text
    add_column :subjects, :seo_title, :string
    add_column :subjects, :seo_keywords, :string
    add_column :subjects, :seo_description, :text
  end
end
