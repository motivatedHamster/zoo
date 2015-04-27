require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "has height" do
    expect(subject).to have_attribute(:height)
  end
  
  it "is valid with a height" do
    giraffe = Giraffe.new(height: 15)
    expect(giraffe).to be_valid
  end
  
  it "is invalid without a height" do
    giraffe = Giraffe.new(height: nil)
    expect(giraffe).to_not be_valid
  end
  
  it "is invalid if height is not integer" do
    giraffe = Giraffe.new(height: "foo")
    expect(giraffe).to_not be_valid
  end

  it "is invalid if height is less than 1" do
    giraffe = Giraffe.new(height: 0)
    expect(giraffe).to_not be_valid
  end
  
  it "can return age guess" do
    giraffe = Giraffe.new height: 10
    expect(giraffe.respond_to? "guess_age").to eq true
  end

  it "is a newborn at height=5" do
    giraffe = Giraffe.new height: 5
    expect(giraffe.guess_age).to eq 0
  end

  it "is 12 years old at height 20" do
    giraffe = Giraffe.new height: 20
    expect(giraffe.guess_age).to eq 12
  end
end
