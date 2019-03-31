class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :lift
      t.string :sets
      t.int :reps
      t.int :restperiod
      t.int :weight

      t.timestamps
    end
  end
end
