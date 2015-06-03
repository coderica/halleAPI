class User < ActiveRecord::Base
	before_save :set_permission
	has_one :recent_post, class_name: "Space", foreign_key: "poster_id"
	has_one :recent_claim, class_name: "Space", foreign_key: "claimer_id"

	private

	def set_permission
		if self.spaces_posted/self.spaces_consumed < 0.8
			self.can_consume = false
		else
			self.can_consume = true
		end
	end
end
