ActiveAdmin.register Course do

permit_params :name, :site, :description, :moderated, :price, :language, :provider_id, :subject_id,
              :direction_id, :duration, :start_date, :end_date, :certificate, :seo_title, :seo_keywords,
              :seo_description

end
