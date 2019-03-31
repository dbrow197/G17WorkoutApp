class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :lift
      t.string :sets
      t.string :reps
      t.string :restperiod
      t.string :weight

      t.timestamps
    end
  end
end
