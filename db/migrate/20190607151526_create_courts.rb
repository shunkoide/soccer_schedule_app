class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :store_name
      t.string :address
      t.string :access
      t.string :tel
      t.string :store_email
      t.string :nearest_station
      t.string :latitude
      t.string :logitude
      t.string :hours
      t.boolean :parking
      t.text :url
      t.string :holiday

      t.timestamps
    end
  end
end
