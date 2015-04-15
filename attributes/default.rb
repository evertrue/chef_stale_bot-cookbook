default['chef_stale_bot']['install_dir'] = '/usr/share/chef-bot'

default['chef_stale_bot']['cron']['minute'] = '*/5'

default['chef_stale_bot']['environment']['CHEF_SERVER_ENDPOINT'] = 'https://api.opscode.com/organizations/<org>'
default['chef_stale_bot']['environment']['CHEF_BOT_SLACK_HOOK'] = '<slack-hook>'
default['chef_stale_bot']['environment']['KNIFE_NODE_NAME'] = 'edhurtig'
default['chef_stale_bot']['environment']['KNIFE_CLIENT_KEY'] = '/etc/chef/client.pem'
default['chef_stale_bot']['environment']['CHEF_BOT_STALE_TIME'] = 3600
default['chef_stale_bot']['environment']['CHEF_BOT_CHANNEL'] = '#ops-dev'
