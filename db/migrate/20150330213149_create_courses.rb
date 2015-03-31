class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.text :details
      t.string :instructor
      t.string :application_link
      t.boolean :enrollment_open
      t.integer :track_id

      t.timestamps
    end
  end
end
