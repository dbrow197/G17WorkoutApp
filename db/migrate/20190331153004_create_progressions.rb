class CreateProgressions < ActiveRecord::Migration[5.2]
  def change
    create_table :progressions do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.integer :weeks
      t.string :day
      t.string :daytype

      # Exercise counts?
      t.integer :benchpress
      t.integer :powerclean
      t.integer :squats
      t.integer :deadlift
      t.integer :overheadpress
      
      t.timestamps
    end
  end
end
