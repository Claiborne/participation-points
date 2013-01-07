class AddMoreToStudents < ActiveRecord::Migration
  def change
    add_column :student, :period, :string
    add_column :student, :not_answered, :integer
    add_column :student, :not_teams, :integer
  end
end
