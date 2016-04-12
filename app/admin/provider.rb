ActiveAdmin.register Provider do
  permit_params :name_ru, :site, :description_ru, :moderated, :seo_title_ru, :seo_keywords_ru, :seo_description_ru,
                :name_en, :description_en, :seo_title_en, :seo_keywords_en, :seo_description_en, :icon, :currency,
                :average_price, :free_content

  form do |f|
    f.inputs do
      [:name_ru, :site, :description_ru, :moderated, :seo_title_ru, :seo_keywords_ru, :seo_description_ru,
       :name_en, :description_en, :seo_title_en, :seo_keywords_en, :seo_description_en, :icon,
       :average_price, :free_content].each do |param|
        f.input param
      end
      f.input :currency, as: :select, collection: Provider.currencies.keys
    end

    f.actions
  end
end
