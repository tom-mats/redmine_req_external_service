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
    redirect_to {action: 'index', id: params[:id], issue: params[:issue], target: params[:target]}
  end
end
