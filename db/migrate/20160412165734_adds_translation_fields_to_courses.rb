class AddsTranslationFieldsToCourses < ActiveRecord::Migration
  def change
    #courses
    rename_column :courses, :seo_title, :seo_title_ru
    add_column :courses, :seo_title_en, :string
    rename_column :courses, :seo_keywords, :seo_keywords_ru
    add_column :courses, :seo_keywords_en, :string
    rename_column :courses, :seo_description, :seo_description_ru
    add_column :courses, :seo_description_en, :string
    rename_column :courses, :duration, :duration_ru
    add_column :courses, :duration_en, :string
    rename_column :courses, :name, :name_ru
    add_column :courses, :name_en, :string
    rename_column :courses, :description, :description_ru
    add_column :courses, :description_en, :string
  end
end
