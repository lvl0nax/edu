# == Schema Information
#
# Table name: providers
#
#  id              :integer          not null, primary key
#  name            :string
#  site            :string
#  description     :text
#  moderated       :boolean          default(FALSE)
#  seo_title       :string
#  seo_keywords    :string
#  seo_description :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Provider < ActiveRecord::Base
  has_many :courses
  has_many :subjects_providers
  has_many :subjects, through: :subjects_providers

  validates_presence_of :name, :site
end
