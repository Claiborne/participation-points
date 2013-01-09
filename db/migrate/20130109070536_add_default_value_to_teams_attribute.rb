class AddDefaultValueToTeamsAttribute < ActiveRecord::Migration
  def change
    change_column :students, :teams, :integer, :default => 0
  end
end
