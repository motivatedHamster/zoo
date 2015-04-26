class Turtle < ActiveRecord::Base
  validates :is_inside, presence: true

  def hide()
    self.is_inside = 1
  end
  
  def emerge()
    self.is_inside = 0
  end
end  # class Turtle < ActiveRecord::Base
