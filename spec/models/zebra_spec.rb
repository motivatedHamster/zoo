require 'rails_helper'

RSpec.describe Zebra, type: :model do
  it "has weight" do
    expect(subject).to have_attribute(:weight)
  end
  
  it "is valid with weight greater than zero" do
    zebra = Zebra.new(weight: 1)
    expect(zebra).to be_valid
  end
  
  it "is not valid with weight less than 1" do
    zebra = Zebra.new(weight: 0)
    expect(zebra).to_not be_valid
  end
  
  it "is not valid without integer weight" do
    zebra = Zebra.new(weight: "foo")
    expect(zebra).to_not be_valid
  end

end
