class Tiger < ActiveRecord::Base
  def hungry
    appetite > 0
  end
  
  def eat(zebra)
    appetite -= zebra.weight
    zebra.destroy
  end
  
end
