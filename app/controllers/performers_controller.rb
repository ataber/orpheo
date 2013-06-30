class PerformersController < ApplicationController
  before_filter :authenticate_user!, :only => [:edit, :new, :create, :delete]

  def index
    @performers = Performer.all() rescue nil
  end

  def show
    @performer = Performer.find(params[:id]) 
  end

  def edit
    if user_signed_in?
      @performer = Performer.find_by_user_id(current_user.id)
    else
      flash[:notice] = "Please Sign In"
      redirect_to sign_in_path
    end
  end

  def new
    @performer = Performer.new
  end
  
  def create
    @performer = current_user.build_performer(params[:performer])
    @performer.user = current_user
    if @performer.save
      redirect_to @performer
    else 
      flash[:error] = "Unable to save band"
      redirect_to new_performer_path
    end
  end
end
