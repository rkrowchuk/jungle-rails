require 'rails_helper'

RSpec.describe Product, type: :model do
  category = Category.new(name: "category")
  subject {
    described_class.new(name: "Name", price: 1000, quantity: 3, category: category)
  } 

  describe 'Validations' do
      
    it 'is valid with a name' do
      expect(subject.name).to be_present
    end  
    it 'is valid with a price' do
      expect(subject.price).to be_present
    end 
    it 'is valid with a quantity' do
      expect(subject.quantity).to be_present
    end 
    it 'is valid with a category' do
      expect(subject.category).to be_present
    end  
  end

end
