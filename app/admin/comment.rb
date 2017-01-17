ActiveAdmin.register Comment, as: 'OrderComment' do
   controller do
     defaults resource_class: Comment, collection_name: 'comments', instance_name: 'comment'
   end
   permit_params :content, :user_id, :order_id
end