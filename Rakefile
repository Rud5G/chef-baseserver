require 'rubygems'
require 'bundler/setup'

namespace :style do
  require 'cane/rake_task'
  desc 'Run Ruby metrics checks'
  Cane::RakeTask.new(:ruby)

  require 'foodcritic'
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef)
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => [:style, :spec]
