#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'download the latest Spider source files'
task 'spider:download' do
  sh 'npm', 'install', 'spider-script'
end


desc 'upgrade Spider source files'
task 'spider:upgrade' => %w(spider:download) do
  dir = 'lib/src-src/support'
  rm_rf dir
  mkdir_p dir
  mv 'node_modules/spider-script', "#{dir}/spider"
end

Rake::TestTask.new do |test|
  test.libs << "test"
  test.test_files = FileList['test/test*.rb']
  test.verbose = true
end

task :default => :test
