class IssController < ApplicationController
  class IssConfig
    include ActiveModel::Model

    attr_accessor :id, :issue, :ip
  end
  def index
    @form = IssConfig.new
    @form.issue = params[:issue]
    @form.id = params[:id]
    list = User.current.custom_field_values.select{|elem| elem.custom_file.name == "list"}.map { |e| e.value }
  end

  def new
  end

  def req
    p params
    p @form
    redirect_to :back
  end
end
