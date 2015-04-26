require 'rails_helper'

RSpec.describe Turtle, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
  it "might be inside the shell" do
    expect(subject).to have_attribute(:is_inside)
  end
  
  it "is valid with boolean is_inside" do
    turtle = Turtle.new(is_inside: true)
    expect(turtle).to be_valid
  end
  
  it "can hide inside the shell" do
    turtle = Turtle.new(is_inside: false)
    turtle.hide
    expect(turtle.is_inside).to eq true
  end
  
  it "can emerge from the shell" do
    turtle = Turtle.new(is_inside: true)
    turtle.emerge
    expect(turtle.is_inside).to eq false
  end
  
end
