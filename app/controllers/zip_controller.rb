class ZipController < ApplicationController
  unloadable
  class ZipConfig
    include ActiveModel::Model

    attr_accessor :id, :issue, :ip
  end
  def index
    @form = params[:notice]
    @form = ZipConfig.new
    @form.issue = params[:issue]
    @form.id = params[:id]
    list = User.current.custom_field_values
             .select{|e| e.custom_field.name == "list"}
             .map { |e| e.value.split(",") }.flatten
             .map { |e| e.strip }
    ary = [list,list].transpose
    @ip_table = Hash[*ary.flatten]
  end

  def req
    ip = params[:zip_controller_zip_config][:ip]
    redirect_to ({action: 'index', issue: params[:issue]}), notice: "Extract to #{ip}. Wait a minute..."
  end
end
