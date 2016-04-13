ActiveAdmin.register Course do

permit_params :name_ru, :name_en, :site, :description_ru, :description_en, :moderated, :price, :language,
              :provider_id, :subject_id, :direction_id, :duration_ru, :duration_en, :start_date, :end_date,
              :certificate, :seo_title_ru, :seo_keywords_ru, :seo_description_ru, :seo_title_en, :seo_keywords_en,
              :seo_description_en

end
