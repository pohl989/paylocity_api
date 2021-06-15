# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

#not yet, my young padawan
#require "rubocop/rake_task"
#RuboCop::RakeTask.new

task default: %i[spec rubocop]

task :testish do
  exec "pry -r paylocity_api -I ./lib"
end
