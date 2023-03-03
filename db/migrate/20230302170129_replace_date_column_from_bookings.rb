class ReplaceDateColumnFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date_debut
    remove_column :bookings, :date_fin
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
  end
end
