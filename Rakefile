require "rake/testtask"


task :default => :unit

Rake::TestTask.new(:unit) do |t|
	t.libs << "tests"
	t.test_files = Dir["tests/test_*.rb"]
	t.verbose = false
end	