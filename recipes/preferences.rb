require 'time'

preferences = node['sprout']['rubymine']['preferences']

git preferences['clone_dir'] do
  repository preferences['repository']
  revision preferences['revision']
  action :sync
  user node['current_user']
end

execute './mineprefs install' do
  cwd preferences['clone_dir']
  user node['current_user']
  environment('TARGET_DIR' => preferences['install_dir'])
end
