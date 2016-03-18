# == Schema Information
#
# Table name: directions
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  subject_id      :integer
#  seo_title       :string
#  seo_keywords    :string
#  seo_description :text
#

class Direction < ActiveRecord::Base
  has_many :courses
  belongs_to :subject

  validates_presence_of :name
end
