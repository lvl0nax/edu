ActiveAdmin.register Subject do
  permit_params :name, :seo_title, :seo_keywords, :seo_description
end
