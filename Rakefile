require 'bundler/setup'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:unit)

require 'rubocop/rake_task'
desc 'Run Ruby style checks'
Rubocop::RakeTask.new(:style)

require 'foodcritic'
FoodCritic::Rake::LintTask.new

require 'kitchen'
desc 'Run Test Kitchen integration tests'
task :integration do
  Kitchen.logger = Kitchen.default_file_logger
  Kitchen::Config.new.instances.each do |instance|
    instance.test(:always)
  end
end

task ci: %w(style foodcritic unit)

# The default rake task should just run it all
task default: %w(ci integration)

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end
