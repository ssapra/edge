class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :track_id
      t.string :title
      t.string :image_url
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
