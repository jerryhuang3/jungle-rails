require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    subject(:product) { Product.new(
      name: "G",
      price_cents: 0,
      quantity: 0,
      category: Category.new(name:"2")
    )}

    it "product should have all attributes" do
      expect(product).to be_valid
    end

    it "product should have a name" do
      product.name = nil
      expect(product).to be_valid
    end

    it "product should have a price" do
      product.price_cents = nil
      expect(product).to be_valid
    end

    it "product should have a quantity" do
      product.quantity = nil
      expect(product).to be_valid
    end

    it "product should have a category" do
      product.category = nil
      expect(product).to be_valid
    end

    
  end
end