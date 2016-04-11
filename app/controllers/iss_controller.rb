class IssController < ApplicationController
  unloadable


  def index
    @issue = params[:issue]
    @id = params[:id]
  end

  def new
  end

  def req
    p @issue
    p @id
    p params
    redirect_to action: 'index'
  end
end
