require 'rails_helper'

RSpec.describe Taco, type: :model do
  it "requires name and price for valid taco" do
    taco = Taco.new
    expect(taco).to be_invalid
    expect(taco.errors[:name]).to include("can't be blank")
    taco.name = "name1"
    expect(taco).to be_invalid
    expect(taco.errors[:name]).to be_empty
    expect(taco.errors[:price]).to include("can't be blank")
    taco.price = 3
    expect(taco).to be_valid
    expect(taco.errors[:price]).to be_empty
  end
  it "requires price to be integer" do
    taco = Taco.new(name: "name2",price: "price")
    expect(taco).to be_invalid
    expect(taco.errors[:price]).to include("is not a number")
    taco.price = 3
    expect(taco).to be_valid
    expect(taco.errors[:price]).to be_empty
  end
end
