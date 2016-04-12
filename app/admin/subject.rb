ActiveAdmin.register Subject do
  permit_params :name_ru, :name_en, :icon, :seo_title_ru, :seo_keywords_ru, :seo_description_ru,
                :seo_title_en, :seo_keywords_en, :seo_description_en
end
