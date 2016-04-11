class IssController < ApplicationController
  unloadable


  def index
    @issue = params[:issue]
    @iss_id = params[:id]
    p @issue
    p @iss_id
  end

  def new
  end

  def req
    redirect_to action: 'index'
  end
end
