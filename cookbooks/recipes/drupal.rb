include_recipe 'drupal'

node.default['drupal']['db']['host'] = '127.0.0.1'
node.override['drupal']['server_aliases'] = 'drupal.itsreaning.com'

if node['platform'] == 'windows'
  node.default['drupal']['parent_dir'] = "#{ENV['SystemDrive']}\\inetpub"
  node.default['drupal']['dir'] = "#{node['drupal']['parent_dir']}\\drupal"
  node.default['drupal']['url'] = "https://drupal.org/drupal-#{node['drupal']['version']}.zip"
else
  node.default['drupal']['server_name'] = 'drupal.itsreaning.com'
end

node.default['drupal']['php_options'] = { 'php_admin_value[upload_max_filesize]' => '50M', 'php_admin_value[post_max_size]' => '55M' }
