class ProvidersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @all_providers = Provider.moderated
    @all_subjects = Subject.includes(:subjects_providers).all
  end

  def show

  end

  def create
    @provider = Provider.new(permitted_params)
    @provider.moderated = false
    @provider.user = current_user
    if @provider.save
      redirect_to :root, notice: t('notifications.success_provider')
    else
      render :new
    end
  end

  def new
    @provider = Provider.new
  end

  private

  def permitted_params
    params.require(:provider).permit(:name, :site, :description, :icon, :currency, :free_content, :average_price)
  end
end
