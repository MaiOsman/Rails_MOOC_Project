ActiveAdmin.register User do
  permit_params :name, :email, :gender, :image, :date_of_birth, :password, :password_confirmation, :role_id

end
