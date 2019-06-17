class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.references :user, foreign_key: true
      t.references :court, foreign_key: true
      t.integer :max_member
      t.date :event_date
      t.text :description

      t.timestamps
    end
  end
end
