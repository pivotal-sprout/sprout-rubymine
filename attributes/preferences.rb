default['sprout']['rubymine']['preferences']['repository'] =
    'https://github.com/pivotal/Pivotal-Preferences-RubyMine.git'
default['sprout']['rubymine']['preferences']['revision']   = 'master'
default['sprout']['rubymine']['preferences']['clone'] =
    "#{Chef::Config[:file_cache_path]}/sprout-rubymine-preferences"
default['sprout']['rubymine']['preferences']['dir'] = "#{node['sprout']['home']}/Library/Preferences/RubyMine60"
default['sprout']['rubymine']['preferences']['files'] = %w(
  keymaps/pivotal.xml
  templates/jasmine.xml
  options/editor.xml
  options/ide.general.xml
  options/keymap.xml
  options/colors.scheme.xml
)
