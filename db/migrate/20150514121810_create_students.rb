class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll
      t.integer :mark1
      t.integer :mark2

      t.timestamps null: false
    end
  end
end
