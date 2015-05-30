class Space < ActiveRecord::Base
  def initialize(args)
    super
    self.converted_time = ((Time.now).to_f *1000).to_s
  end
end
