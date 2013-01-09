class AddDefaultValueToNotTeamsAttribute < ActiveRecord::Migration
  def change
    change_column :students, :not_teams, :integer, :default => 0
  end
end
