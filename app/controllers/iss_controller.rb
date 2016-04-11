class IssController < ApplicationController
  unloadable


  def index
    @issue = params[:issue]
    @iss_id = params[:id]
  end

  def new
  end

  def req
    redirect_to action: 'index'
  end
end
