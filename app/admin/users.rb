# ActiveAdmin.register User do
# 	permit_params :email, :first_name, :last_name, :nickname, :author, :admin
# end


ActiveAdmin.register User do
  index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :nickname
    column :author
    column :admin
    actions
  end
end


# ActiveAdmin.register User do
#   form do |f|
#     f.inputs "Identity" do
#       f.input :first_name
#       f.input :last_name
#       f.input :nickname
#       f.input :email
#     end
#     f.inputs "Admin" do
#       f.input :admin
#       f.input :author
#     end
#     f.actions
#   end

#   permit_params :first_name, :last_name, :nickname, :email, :admin, :author
# end