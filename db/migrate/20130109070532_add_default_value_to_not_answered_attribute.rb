class AddDefaultValueToNotAnsweredAttribute < ActiveRecord::Migration
  def change
    change_column :students, :not_answered, :integer, :default => 0
  end
end
