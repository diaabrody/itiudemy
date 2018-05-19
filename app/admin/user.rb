ActiveAdmin.register User do

    permit_params :name , :birthday , :gender , :email , :avatar , :password , :role 
    index do

        selectable_column
        id_column
        column :email
        column :name
        column :avatar
        column :gender 
        column :birthday     


    end

    form do |f|
        f.inputs do
          f.input :email
          f.input :name
          f.input :avatar
          f.input :gender
          f.input :role
          f.input :birthday , start_year: 1900
          f.input :password
        
        


        end
        f.actions 
    end
  
  

  end