require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject (:cheesecake) {Dessert.new("cheesecake", 3, chef)}
  let(:chef) { double("chef", name: "Lynn") }

  describe "#initialize" do
    it "sets a type" do
      expect (cheesecake.type).to eq("cheesecake")
    end

    it "sets a quantity" do
      expect (cheesecake.quantity).to eq(3)
    end

    it "starts ingredients as an empty array" do
      expect (cheesecake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect {Dessert.new("cheesecake", "3", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("eggs")
      expect (cheesecake.ingredients).to include("eggs")
    end 
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cheesecake.ingredients).to receive(:shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cheesecake.eat(2)
      expect(cheesecake.quantity).to eq(1)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {cheesecake.eat(5)} to raise_error("Not enought inventory!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cheesecake.serve).to include("Lynn")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cheesecake)
    end
  end
end
