class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :name
       t.references :course
        t.integer :subject_type
      t.timestamps
    end
  end
end
