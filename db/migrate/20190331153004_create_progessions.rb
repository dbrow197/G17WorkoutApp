class CreateProgessions < ActiveRecord::Migration[5.2]
  def change
    create_table :progessions do |t|
      t.string :weeks
      t.string :day

      t.timestamps
    end
  end
end
