Redmine::Plugin.register :redmine_req_external_service do
  name 'Redmine Req External Service plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  settings default: {
    zip_ext_service: "",
    rrrc_ext_service: "",
    iss_ext_service: ""
  }, partial: 'settings/req_external_service_settings'
end

Redmine::WikiFormatting::Macros.register do
  macro :iss do |obj, args|
    link_to(args.first, {controller: 'iss', action: 'index', id: args.first, issue: @issue})
  end
end
