class IssController < ApplicationController
  unloadable
  class ExtractForm
    include ActiveModel::Model

    attr_accessor :ip, :issue, :id
  end


  def index
    @form = ExtractForm.new
    @form.issue = params[:issue]
    @form.id = params[:id]
  end

  def new
  end

  def req
    p @form
    p params
    redirect_to :back
  end
end
