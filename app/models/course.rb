# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  name            :string
#  site            :string
#  description     :text
#  moderated       :boolean          default(FALSE)
#  price           :float
#  language        :integer
#  provider_id     :integer
#  subject_id      :integer
#  direction_id    :integer
#  duration        :string
#  start_date      :datetime
#  end_date        :datetime
#  certificate     :boolean          default(FALSE)
#  seo_title       :string
#  seo_keywords    :string
#  seo_description :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Course < ActiveRecord::Base
  belongs_to :provider
  belongs_to :subject
  belongs_to :direction

  validates_presence_of :name
end
