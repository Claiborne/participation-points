class AddDefaultValueToAnsweredAttribute < ActiveRecord::Migration
  def change
    change_column :students, :answered, :integer, :default => 0
  end
end
