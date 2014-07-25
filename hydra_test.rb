#require 'spec_helper'
require_relative 'hydra'

describe Hydra do

  before do
    @hydra = Hydra.new("Hydra")
    @ship = Ship.new("Ship")
  end

  it "can create a hydra" do
    expect(@hydra).to be_instance_of(Hydra)
  end

  it "has a name" do
    expect(@hydra.name).to eq("Hydra")
  end

  it "can create a ship" do
    expect(@ship).to be_instance_of(Ship)
  end

  it "eats the ship if a ship passes by" do
    @hydra.eat(@ship)
    expect(@ship.destroyed).to be(true)
  end

end
