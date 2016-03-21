module Translatable
  extend ActiveSupport::Concern

  class_methods do
    def translatable_fields *fields
      locale = -> { I18n.locale }
      fields.each do |field|
        define_method(field) do
          try("#{field}_#{locale.call}")
        end
        define_method("#{field}=") do |a|
          try("#{field}_#{locale.call}=", a)
        end
      end
    end
  end
end
