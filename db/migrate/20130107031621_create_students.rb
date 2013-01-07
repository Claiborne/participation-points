class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :answered
      t.integer :teams
      t.integer :volunteered

      t.timestamps
    end
  end
end
