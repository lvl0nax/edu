class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def home
    @all_subjects = Subject.includes(:courses).all
    @all_providers = Provider.moderated.all
  end

  def about; end

  def contacts; end

  def profile; end
end
