default[:polipo][:install][:action] = :install
default[:polipo][:install][:version] = nil

default[:polipo][:directories][:config] = '/etc/polipo'

default[:polipo][:config][:allowed_clients] = '127.0.0.1'
default[:polipo][:config][:log_syslog] = false
default[:polipo][:config][:log_file] = '/var/log/polipo/polipo.log'

default[:polipo][:options][:method] = ['any']

default[:polipo][:forbidden] = []

default[:polipo][:service][:user] = 'proxy'
