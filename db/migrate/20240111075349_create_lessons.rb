class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :name
       t.references :subject
       t.string :lesson_type
       t.text :description
      t.timestamps
    end
  end
end
