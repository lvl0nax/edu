ActiveAdmin.register Provider do
  permit_params :name, :site, :description, :moderated, :seo_title, :seo_keywords, :seo_description
end
