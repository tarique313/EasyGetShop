ActiveAdmin.register User do

permit_params :name, :address, :phone, :fb_id, :encrypted_password     

end
