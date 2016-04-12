class AddsTranslatedFieldsToProvides < ActiveRecord::Migration
  def change
    # subjects
    rename_column :subjects, :seo_title, :seo_title_ru
    add_column :subjects, :seo_title_en, :string
    rename_column :subjects, :seo_keywords, :seo_keywords_ru
    add_column :subjects, :seo_keywords_en, :string
    rename_column :subjects, :seo_description, :seo_description_ru
    add_column :subjects, :seo_description_en, :string

    #providers
    rename_column :providers, :seo_title, :seo_title_ru
    add_column :providers, :seo_title_en, :string
    rename_column :providers, :seo_keywords, :seo_keywords_ru
    add_column :providers, :seo_keywords_en, :string
    rename_column :providers, :seo_description, :seo_description_ru
    add_column :providers, :seo_description_en, :string
    rename_column :providers, :name, :name_ru
    add_column :providers, :name_en, :string
    rename_column :providers, :description, :description_ru
    add_column :providers, :description_en, :string

    #adds counter cache to provider for courses
    add_column :providers, :courses_count, :integer, default: 0
  end
end
