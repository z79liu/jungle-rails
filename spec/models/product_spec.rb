require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'is not valid without a name' do
      @category = Category.new(name: 'Entertainment')
      @category.save
      @product = Product.new(name: nil, description: 'cool test product', price: 5000, quantity: 5, category_id: @category.id )
      expect(@product).to_not be_valid
    end

    it 'is not valid without a price' do
      @category = Category.new(name: 'Food')
      @category.save
      @product = Product.new(name: 'icecream', description: 'cool test product', price: nil, quantity: 5, category_id: @category.id )
      expect(@product).to be_valid
    end

    it 'is not valid without a quantiy' do
      @category = Category.new(name: 'Food')
      @category.save
      @product = Product.new(name: 'icecream', description: 'cool test product', price: 200, quantity: nil, category_id: @category.id )
      expect(@product).to_not be_valid
    end

    it 'is not valid without a category' do

      @product = Product.new(name: 'icecream', description: 'cool test product', price: 200, quantity: 5, category_id: nil )
      expect(@product).to_not be_valid
    end
  end

end
