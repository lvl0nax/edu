class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :site
      t.text :description
      t.boolean :moderated, default: false

      t.string :seo_title
      t.string :seo_keywords
      t.text :seo_description

      t.timestamps null: false
    end
  end
end
