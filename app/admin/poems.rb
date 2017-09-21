ActiveAdmin.register Poem do
	permit_params :title, :user_id, :content, :year, :dedicated_to, :cover

	index do
    selectable_column
    column :id
    column :title
    column :user
    column :year
    column :cover
    column :dedicated_to
    actions
	end
end

