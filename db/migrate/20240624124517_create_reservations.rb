class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date
      t.bigint :appartement_id, null: false
      t.bigint :client_id, null: false

      t.timestamps
    end
  end
end
