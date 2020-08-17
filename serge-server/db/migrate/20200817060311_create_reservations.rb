class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :type
      t.decimal :cost, precision: 6, scale: 2
      t.datetime :date_and_time
      t.string :location
      t.string :nickname
      t.string :details
      t.boolean :is_paid

      t.timestamps
    end
  end
end
