require 'rails_helper'

RSpec.describe Giraffe, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a height" do
    giraffe = Giraffe.new(height: 15)
    expect(giraffe).to be_valid
  end
  
  it "is invalid without a height" do
    giraffe = Giraffe.new(height: nil)
    expect(giraffe).to_not be_valid
  end
end
