# == Schema Information
#
# Table name: subjects_providers
#
#  id          :integer          not null, primary key
#  subject_id  :integer
#  provider_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_subjects_providers_on_subject_id_and_provider_id  (subject_id,provider_id) UNIQUE
#

class SubjectsProvider < ActiveRecord::Base
  belongs_to :subject
  belongs_to :provider
end
