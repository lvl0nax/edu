class WelcomeController < ApplicationController
  def home
    @all_subjects = Subject.all
  end
end
