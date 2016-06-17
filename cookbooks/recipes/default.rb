package ['build-essential', 'curl', 'git', 'jq', 'p7zip', 'p7zip-full', 'rar', 'unrar', 'unzip', 'wget', 'zlib1g-dev', 'zsh'] do
  :install
end
include_recipe 'mysql'
include_recipe 'apache2'
include_recipe 'php'
