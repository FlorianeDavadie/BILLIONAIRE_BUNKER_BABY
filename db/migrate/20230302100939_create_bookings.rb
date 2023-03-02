class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :date_debut
      t.text :date_fin
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :bunker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
