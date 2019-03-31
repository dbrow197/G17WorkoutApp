class CreateProgessions < ActiveRecord::Migration[5.2]
  def change
    create_table :progessions do |t|
      t.int :weeks
      t.int :day

      t.timestamps
    end
  end
end
