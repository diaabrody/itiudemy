ActiveAdmin.register Lecture do

    permit_params :content , :attachment , :course_id , :user_id  

    form do |f|
        f.inputs do
          f.input :content , as: :ckeditor
          f.input :attachment
          f.input :course
          f.input :user
 
        end
        f.actions
      end

end