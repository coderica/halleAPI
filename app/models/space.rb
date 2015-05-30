class Space < ActiveRecord::Base

  def save_js_time
    self.converted_time = (((Time.now).to_f)* 1000).to_s
  end

end
