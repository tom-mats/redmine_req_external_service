class IssController < ApplicationController
  unloadable
  class TargetConfig
    attr_accessor :ip
  end


  def index
    @issue = params[:issue]
    @id = params[:id]
    @target = TargetConfig.new
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
