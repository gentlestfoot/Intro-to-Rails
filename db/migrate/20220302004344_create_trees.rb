class CreateTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :trees do |t|
      t.string :common_name
      t.string :location
      t.integer :diameter

      t.timestamps
    end
  end
end
