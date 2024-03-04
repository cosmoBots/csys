Redmine::Plugin.register :csys do
  name 'Csys plugin'

  name 'Cosmosys plugin'
  author 'cosmboBots.eu'
  description 'This is a plugin for Redmine, which converts it into a CosmoSys instance'
  version '0.1.0'
  url 'http://cosmobots.eu'
  author_url 'http://cosmobots.eu'

  menu :project_menu, :csys, {:controller => 'csys', :action => 'menu' }, :caption => 'cSys', :after => :activity, :param => :id

  settings :default => {
    "report_format"=>"A4",
    "report_orientation"=>"Portrait",
  }, :partial => 'settings/csys_settings'


  require 'issue_patch'
  require 'project_patch'

end
