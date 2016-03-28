require "rake/testtask"
require 'pg'
require 'active_record'
require 'yaml'


task :default => :test
Rake::TestTask.new(:test) do |t|
  t.libs = %w(lib tests)
  t.pattern = "tests/**/*_test.rb"
end
task :default => :test

namespace :db do

  desc "Create the db"
  task :create do
    connection_details = YAML::load(File.open('config/database.yml'))
    admin_connection = connection_details.merge({'database'=> 'postgres', 
                                                'schema_search_path'=> 'public'}) 
    ActiveRecord::Base.establish_connection(admin_connection)
    ActiveRecord::Base.connection.create_database(connection_details.fetch('database'))
  end

end
