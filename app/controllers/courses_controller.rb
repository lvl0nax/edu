class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index

  end

  def show

  end

  def create
    @course = Course.new(permitted_params)
    @course.moderated = false
    @course.user = current_user
    if @course.save
      redirect_to :root, notice: t('notifications.success_course')
    else
      render :new
    end
  end

  def new
    @providers = Provider
      .where(Provider.arel_table[:moderated].eq(true).or(Provider.arel_table[:user_id].eq(current_user.id)))
    @course = Course.new
  end

  private

  def permitted_params
    params.require(:course).permit(:name, :site, :description, :language, :certificate, :duration,
                                   :price, :start_date, :end_date, :subject_id, :provider_id)
  end
end
