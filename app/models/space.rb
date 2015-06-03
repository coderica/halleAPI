class Space < ActiveRecord::Base
	belongs_to :poster, class_name: "User", foreign_key: "poster_id"
	belongs_to :claimer, class_name: "User", foreign_key: "claimer_id"

  def save_js_time
    self.converted_time = (((Time.now).to_f)* 1000)
  end

end
