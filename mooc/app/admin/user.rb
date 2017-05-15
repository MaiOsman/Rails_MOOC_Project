ActiveAdmin.register User do
  permit_params :name, :email, :gender, :image, :date_of_birth, :password, :password_confirmation, :role_id

  form do |f|
      f.inputs "New User" do

        f.input :name
        f.input :email
        f.input :date_of_birth
        f.input :image
        f.input :gender
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
end
