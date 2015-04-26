class Tiger < ActiveRecord::Base
  validates :appetite, presence: true, numericality: { only_integer: true }

  def hungry
    appetite > 0
  end
  
  def eat(zebra)
    self.appetite -= zebra.weight
    zebra.destroy
  end
  
end  # class Tiger < ActiveRecord::Base
