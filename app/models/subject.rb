# == Schema Information
#
# Table name: subjects
#
#  id              :integer          not null, primary key
#  name_ru         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  seo_title       :string
#  seo_keywords    :string
#  seo_description :text
#  name_en         :string
#  icon            :string
#

class Subject < ActiveRecord::Base
  include Translatable
  translatable_fields :name

  mount_uploader :icon, IconUploader

  has_many :courses
  has_many :directions
  has_many :subjects_providers
  has_many :providers, through: :subjects_providers

  validates_presence_of :name_ru, :name_en
end
