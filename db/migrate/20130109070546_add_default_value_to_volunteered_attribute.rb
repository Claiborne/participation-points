class AddDefaultValueToVolunteeredAttribute < ActiveRecord::Migration
  def change
    change_column :students, :volunteered, :integer, :default => 0
  end
end
