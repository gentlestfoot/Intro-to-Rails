class AddNeighbourhoodToTree < ActiveRecord::Migration[7.0]
  def change
    add_reference :trees, :neighbourhood, null: false, foreign_key: true
  end
end
