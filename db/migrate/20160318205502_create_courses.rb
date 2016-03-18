class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :site
      t.text :description
      t.boolean :moderated, default: false
      t.float :price
      t.integer :language
      t.integer :provider_id
      t.integer :subject_id
      t.integer :direction_id
      t.string :duration
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :certificate, default: false

      t.string :seo_title
      t.string :seo_keywords
      t.text :seo_description

      t.timestamps null: false
    end
  end
end
