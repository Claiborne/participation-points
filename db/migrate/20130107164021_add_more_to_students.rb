class AddMoreToStudents < ActiveRecord::Migration

  def change
    add_column :students, :period, :string
    add_column :students, :not_answered, :integer
    add_column :students, :not_teams, :integer
    change_column :students, :not_teams, :integer
  end
end