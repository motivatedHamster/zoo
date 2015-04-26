class Giraffe < ActiveRecord::Base
  validates :height, presence: true, numericality: { greater_than: 0 }

  def guess_age
    
  end
end  # class Giraffe < ActiveRecord::Base
