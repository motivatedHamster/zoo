class Giraffe < ActiveRecord::Base
  validates :height, presence: true, numericality: { greater_than: 0 }

  def guess_age
    # got no good data on when a giraffe hits max height during it's lifespan
    # so far I know only that some giraffe species are typically 5' to 6' at birth, can grow to 20' tall, tend to live appx 15-20 years in the wild and can get to 40 years in captivity
    # am going to just flat-out assume max height of 20' is reached after 12 years, height at birth is 5' & progression is linear from birth
    # most of my 'data' is taken from wikipedia.org and sandiegozoo.org
    # http://library.sandiegozoo.org/factsheets/giraffe/giraffe.htm
    # http://en.wikipedia.org/wiki/Giraffe
    ( (self.height - 5) > 0 ? (self.height - 5) : 0 ) / 15 * 12
    
  end
end  # class Giraffe < ActiveRecord::Base
