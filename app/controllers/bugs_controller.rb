class BugsController < ApplicationController
  def new
  end

  def show
    @bug = Bug.find(params[:id])
  end
end
