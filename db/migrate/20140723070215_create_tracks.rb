class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :description
      t.text :application_link
      t.boolean :enrollment_open
      t.integer :organization_id

      t.timestamps
    end
  end
end
