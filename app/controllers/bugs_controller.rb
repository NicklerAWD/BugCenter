class BugsController < ApplicationController
  #function for the new bug
  def new
  	@bug=Bug.new
  end

  #permit to show a bug
  def show
    @bug = Bug.find(params[:id])
  end

  def create
    @bug = current_user.bugs.build(params[:bug])
    if @bug.save
      flash[:success] = "Bug created!"
      redirect_to @bug
    else
      render 'new'
    end
  end

  #Permit to index all bugs
  def index
    @bugs = Bug.paginate(page: params[:page])
  end
end
