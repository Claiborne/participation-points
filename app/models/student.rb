class Student < ActiveRecord::Base
  attr_accessible :answered, :name, :teams, :volunteered
end
