# == Schema Information
#
# Table name: providers
#
#  id                 :integer          not null, primary key
#  name_ru            :string
#  site               :string
#  description_ru     :text
#  moderated          :boolean          default(FALSE)
#  seo_title_ru       :string
#  seo_keywords_ru    :string
#  seo_description_ru :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  seo_title_en       :string
#  seo_keywords_en    :string
#  seo_description_en :string
#  name_en            :string
#  description_en     :text
#  courses_count      :integer          default(0)
#  icon               :string
#  currency           :integer
#  free_content       :boolean
#  average_price      :float
#  user_id            :integer
#  subject_ids        :integer          is an Array
#  direction_ids      :integer          is an Array
#
# Indexes
#
#  index_providers_on_direction_ids  (direction_ids)
#  index_providers_on_subject_ids    (subject_ids)
#

class Provider < ActiveRecord::Base
  include Translatable
  translatable_fields :name, :description, :seo_title, :seo_keywords, :seo_description

  enum currency: [:RUB, :USD]

  mount_uploader :icon, IconUploader

  belongs_to :user
  has_many :courses

  validates_presence_of :site
  # validates_uniqueness_of :site

  scope :moderated, -> { where(moderated: true) }
end
