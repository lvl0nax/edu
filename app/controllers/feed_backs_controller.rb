class FeedBacksController < ApplicationController
  def create
    FeedBack.create(params.require(:feed_back).permit(:name, :email, :content))
    redirect_to root_path
  end
end
