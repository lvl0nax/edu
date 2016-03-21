module Translatable
  extend ActiveSupport::Concern

  class_methods do
    def translatable_fields *fields
      locale = -> { I18n.locale }
      fields.each do |field|
        define_method(field) do                         # def name
          try("#{field}_#{locale.call}")                #   try("name_en")
        end                                             # end

        define_method("#{field}=") do |value|           # def name=(value)
          try("#{field}_#{locale.call}=", value)        #   try("name_en=", value)
        end                                             # end
      end
    end
  end
end
