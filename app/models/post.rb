class Post < ActiveRecord::Base
	#belongs_to :user
	belongs_to :owner, :class_name => "User", :foreign_key => :user_id
	has_many :comments



	def editable_by?(user)
  		user && user == owner
  		# not understand clearly
  	end

  	def find_user_name(user_id)
  		User.find(user_id).name
  	end

      def get_comment_count(post_id)
            Comment.where(:post_id => post_id).count

      end


end
