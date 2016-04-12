class RrrcController < ApplicationController
  unloadable
  class RrrcConfig
    include ActiveModel::Model

    attr_accessor :id, :issue, :ip
  end
  def index
    @form = params[:notice]
    @form = RrrcConfig.new
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
    ip = params[:rrrc_controller_rrrc_config][:ip]
    issue = params[:issue]
    id = params[:id]
    url = Setting.plugin_redmine_req_external_service['rrrc_exec']
    p params
    p url
    redirect_to ({action: 'index', issue: params[:issue]}), notice: "Run on #{ip}. Wait a minute..."
  end
end
