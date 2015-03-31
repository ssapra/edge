class CreateCourseLinks < ActiveRecord::Migration
  def change
    create_table :course_links do |t|
      t.string :course_id
      t.string :text
      t.string :link

      t.timestamps
    end
  end
end
