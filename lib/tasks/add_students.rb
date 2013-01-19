namespace :student do
  desc "import students from files to database"
  task :import => :environment do
    file = File.open("/Users/wclaiborne/Desktop/students.txt")
    file.each do |line|
      Student.create :name => line.to_s, :period => '1'
    end
  end
end