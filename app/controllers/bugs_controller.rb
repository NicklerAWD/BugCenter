class BugsController < ApplicationController
  def new
  	@bug=Bug.new
  end

  def show
    @bug = Bug.find(params[:id])
  end

  def create
    @bug = Bug.new(params[:bug])
    if @bug.save
      redirect_to @bug
    else
      render 'new'
    end
  end
end