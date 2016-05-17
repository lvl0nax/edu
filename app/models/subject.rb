# == Schema Information
#
# Table name: subjects
#
#  id                 :integer          not null, primary key
#  name_ru            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  seo_title_ru       :string
#  seo_keywords_ru    :string
#  seo_description_ru :text
#  name_en            :string
#  icon               :string
#  seo_title_en       :string
#  seo_keywords_en    :string
#  seo_description_en :string
#  courses_count      :integer          default(0)
#

class Subject < ActiveRecord::Base
  include Translatable
  translatable_fields :name, :seo_title, :seo_keywords, :seo_description

  mount_uploader :icon, SubjectIconUploader

  has_many :courses
  has_many :directions

  def providers
    raise NoMethodError, 'should be implemented'
  end

  validates_presence_of :name_ru, :name_en
end
