class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def home
    @all_subjects = Subject.all
    @all_providers = Provider.moderated.includes(subjects_providers: :subjects).all
  end

  def about; end

  def contacts; end

  def profile; end
end
