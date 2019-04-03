class CreateDaytypes < ActiveRecord::Migration[5.2]
  def change
    create_table :daytypes do |t|
      t.string :dayindex
      
      t.timestamps
    end
  end
end
