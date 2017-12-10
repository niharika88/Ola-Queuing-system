class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :status, :default => "waiting"
      t.datetime :pickup_time
      t.integer :driver_id, unique: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
