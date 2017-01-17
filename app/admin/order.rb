ActiveAdmin.register Order do
	permit_params :status, :body, :user_id
end
