#
# Cookbook Name:: chef_stale_bot
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'apt'

package 'git'

git node['chef_stale_bot']['install_dir'] do
  repository 'https://github.com/evertrue/chef-bot'
  reference 'master'
  user node['chef_stale_bot']['user']
  group node['chef_stale_bot']['group']
  action :sync
  notifies :run, 'execute[bundle install]'
end

include_recipe 'ruby'
include_recipe 'rubygems'

gem_package 'bundler' do
  action :install
end

execute 'bundle install' do
  cwd node['chef_stale_bot']['install_dir']
  command 'bundle install'
  action :run
end

cron_d 'chef-bot' do
  minute node['chef_stale_bot']['cron']['minute']
  command "#{node['chef_stale_bot']['install_dir']}/chef-bot.rb &>> /var/log/chef-bot.log"
  environment node['chef_stale_bot']['environment']
end
