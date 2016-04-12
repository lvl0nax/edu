# == Schema Information
#
# Table name: courses
#
#  id                 :integer          not null, primary key
#  name_ru            :string
#  site               :string
#  description_ru     :text
#  moderated          :boolean          default(FALSE)
#  price              :float
#  language           :integer
#  provider_id        :integer
#  subject_id         :integer
#  direction_id       :integer
#  duration_ru        :string
#  start_date         :datetime
#  end_date           :datetime
#  certificate        :boolean          default(FALSE)
#  seo_title_ru       :string
#  seo_keywords_ru    :string
#  seo_description_ru :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  seo_title_en       :string
#  seo_keywords_en    :string
#  seo_description_en :string
#  duration_en        :string
#  name_en            :string
#  description_en     :string
#

class Course < ActiveRecord::Base
  include Translatable
  translatable_fields :name, :description, :seo_title, :seo_keywords, :seo_description, :duration

  belongs_to :provider, counter_cache: true
  belongs_to :user
  belongs_to :subject
  belongs_to :direction

  enum language: [:ru, :en]

  validates_presence_of :site

  scope :moderated, -> { where(moderated: true) }
end
