# == Schema Information
#
# Table name: feed_backs
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FeedBack < ActiveRecord::Base
  validates :content, presence: true
end
