ActiveAdmin.register Poem do
	permit_params :title, :user_id, :content, :year, :dedicated_to, :cover
end

