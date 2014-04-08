class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :pin_ID
      t.string :guide_id
      t.string :geocode
      t.string :activity
      t.string :description

      t.timestamps
    end
  end
end
