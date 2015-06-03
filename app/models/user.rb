class User < ActiveRecord::Base
	before_save :set_permission

	private

	def set_permission
		if self.spaces_posted/self.spaces_consumed < 0.8
			self.can_consume = false
      true
		else
			self.can_consume = true
		end
	end
end
