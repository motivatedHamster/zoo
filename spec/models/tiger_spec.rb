require 'rails_helper'

RSpec.describe Tiger, type: :model do
  it "needs food" do
    expect(subject).to have_attribute(:appetite)
  end
  
  it "is valid with an appetite" do
    tiger = Tiger.new(appetite: 100)
    expect(tiger).to be_valid
  end

  it "is not valid without an appetite" do
    tiger = Tiger.new(appetite: nil)
    expect(tiger).to_not be_valid
  end

  it "is not valid if appetite is not integer" do
    tiger = Tiger.new(appetite: "foo")
    expect(tiger).to_not be_valid
  end

  it "must return true for .hungry() if appetite is above zero" do
    tiger = Tiger.new(appetite: 1)
    expect(tiger.hungry).to eq true
  end

  it "must return false for .hungry() if appetite is below zero" do
    tiger = Tiger.new(appetite: -1)
    expect(tiger.hungry).to eq false
  end

  it "must be able to eat a zebra" do
    tiger = Tiger.new(appetite: 100)
    expect(tiger.respond_to? "eat").to eq true
  end

  it "must remove eaten zebra from database" do
    tiger = Tiger.new(appetite: 100)
    zebra = Zebra.create(weight: 101)
    initial_count101 = Zebra.where(weight: 101).count
    tiger.eat(zebra)
    final_count101 = Zebra.where(weight: 101).count
    expect(initial_count101 - final_count101).to eq 1
  end

  it "must reduce appetite by weight of eaten zebra" do
    tiger = Tiger.new(appetite: 100)
    zebra = Zebra.create(weight: 101)
    tiger.eat(zebra)
    expect(tiger.appetite).to eq -1
  end
  
end
