class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :type_course
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
