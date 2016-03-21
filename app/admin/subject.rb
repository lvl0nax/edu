ActiveAdmin.register Subject do
  permit_params :name_ru, :name_en, :icon, :seo_title, :seo_keywords, :seo_description
end
