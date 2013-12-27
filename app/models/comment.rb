class Comment < ActiveRecord::Base
	belongs_to :post

	validates :content, presence: true # 此欄位必填

	def find_user_name(user_id)
  		User.find(user_id).name
  	end
end
