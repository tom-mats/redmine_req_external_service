class IssController < ApplicationController
  unloadable
  class TargetConfig
    attr_accessor :ip
  end


  def index
    @issue = params[:issue]
    @id = params[:id]
    @target = TargetConfig.new
    p
  end

  def new
  end

  def req
    p @issue
    p @id
    p @target
    p params
    redirect_to :back
  end
end
