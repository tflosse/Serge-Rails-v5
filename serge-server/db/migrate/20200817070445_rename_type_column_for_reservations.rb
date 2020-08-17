class RenameTypeColumnForReservations < ActiveRecord::Migration[6.0]
  def change
    rename_column :reservations, :type, :reservation_type
  end
end
