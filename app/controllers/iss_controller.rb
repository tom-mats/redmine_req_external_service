class IssController < ApplicationController
  unloadable


  def index
    @issue = params[:issue]
    @id = params[:id]
  end

  def new
  end

  def submit
    p params
    redirect_to :back
  end
end
