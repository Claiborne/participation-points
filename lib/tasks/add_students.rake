namespace :student do
  desc "import students to database"
  task :import => :environment do
    # TODO List of Student Names
    Student.create :name => name, :period => '1'
  end
end