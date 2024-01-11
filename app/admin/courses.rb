ActiveAdmin.register Course do

  permit_params :name

  index do
    selectable_column
    id_column
    column :name
   
    actions
  end

  show do
    attributes_table do
      row :name
   
      # Add more rows for additional fields if needed
    end
  end

  form do |f|
    f.inputs 'Course Details' do
      f.input :name
      # Add more input fields for additional parameters if needed
    end
    f.actions
  end
  
end
