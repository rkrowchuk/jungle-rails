require 'rails_helper'

RSpec.describe Product, type: :model do
  category = Category.new(name: "category")
  subject {
    described_class.new(name: "Name", price: 1000, quantity: 3, category: category)
  }

  describe 'Validations' do
      
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end  
  end

end
