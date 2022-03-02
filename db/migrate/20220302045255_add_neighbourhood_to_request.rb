class AddNeighbourhoodToRequest < ActiveRecord::Migration[7.0]
  def change
    add_reference :requests, :neighbourhood, null: false, foreign_key: true
  end
end
