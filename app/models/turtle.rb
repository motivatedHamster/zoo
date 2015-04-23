class Turtle < ActiveRecord::Base
  def hide()
    is_inside = true
  end
  
  def emerge()
    is_inside = false
  end
end
