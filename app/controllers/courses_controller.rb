class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @all_courses = Course.moderated.includes(:provider)
    @all_courses = @all_courses.where(subject_id: params[:subject].to_i) if params[:subject].to_i > 0
    @all_courses = @all_courses.where(provider_id: params[:provider].to_i) if params[:provider].to_i > 0
    if (title = params[:title]).present?
      @all_courses = @all_courses.where('name_ru ILIKE ? or name_en ILIKE ?', "%#{title}%", "%#{title}%")
    end
    @all_subjects = Subject.includes(:courses).all
  end

  def show
    @course = Course.includes(:provider).find(params[:id])
    @similar_courses = Course.where(direction_id: @course.direction_id).where.not(id: @course.id).limit(20)
    @other_courses = @course.provider.courses.limit(6)
  end

  def create
    @course = Course.new(permitted_params)
    @course.moderated = false
    @course.user = current_user
    if @course.save
      redirect_to :root, notice: t('notifications.success_course')
    else
      flash[:alert] = @course.errors.full_messages
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
