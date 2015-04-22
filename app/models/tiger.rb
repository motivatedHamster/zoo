class Tiger < ActiveRecord::Base
  def hungry
    appetite > 0
  end
  
  def eat(zebra)
    self.appetite -= zebra.weight
    zebra.destroy
  end
  
end
