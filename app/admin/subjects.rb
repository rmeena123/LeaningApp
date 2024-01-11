ActiveAdmin.register Subject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :course_id, :subject_type, lessons_attributes: [:id, :name, :subject_id, :description, :_destroy]
  # index do
  #   selectable_column
  #   id_column
  #   column :name
  #   column 'Course Name', :course do |model|
  #   model.course.name if model.course
  # end
  # colum
  #   column :description
  #   actions
  # end

  # show do
  #   attributes_table do
  #     row :name
  #     row :course_id
   
  #     # Add more rows for additional fields if needed
  #   end
  # end

  form do |f|
    f.inputs 'Subject Details' do
      f.input :name
      f.input :course_id, as: :select, collection: Course.all.map { |c| [c.name, c.id] }
        f.has_many :lessons do |a|
          a.input :name
          a.input :description, as: :quill_editor
          a.input :_destroy, as: :boolean, required: false, label: 'Remove Option'
        end
      # Add more input fields for additional parameters if needed
    end
    f.actions
  end
  
end
