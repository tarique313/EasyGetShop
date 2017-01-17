class Order < ApplicationRecord
	belongs_to :user
	validates :user_id, presence: true
	validates :body, presence: true, length: { minimum: 10, maximum: 1000  }
end
