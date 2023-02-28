class CreateBunkers < ActiveRecord::Migration[7.0]
  def change
    create_table :bunkers do |t|
      t.string :title
      t.text :description
      t.float :prix
      t.text :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
