# == Schema Information
#
# Table name: subjects
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  seo_title       :string
#  seo_keywords    :string
#  seo_description :text
#

class Subject < ActiveRecord::Base
  has_many :courses
  has_many :directions
  has_many :subjects_providers
  has_many :providers, through: :subjects_providers

  validates_presence_of :name
end
