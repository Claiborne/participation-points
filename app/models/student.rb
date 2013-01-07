class Student < ActiveRecord::Base
  attr_accessible :name, :period, :answered, :not_answered, :teams, :not_teams, :volunteered
end
