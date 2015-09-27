# require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = File.join 'spec', '**', '*_spec.rb'
  t.verbose = true
  t.warning = true
end

FileList['tasks/**/*.rake'].each(&method(:import))

task default: :test
