class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :service_area
      t.string :service_request
      t.string :location

      t.timestamps
    end
  end
end
