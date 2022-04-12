require 'rails_helper'

RSpec.describe User, type: :model do
  password_match = User.new(firstname: "First", lastname: "Last", email: "test@test.com", password: "password", password_confirmation: "password")
  password_match.save
  password_no_match = User.new(firstname: "First", lastname: "Last", email: "test@test.com", password: "password", password_confirmation: "wrong")
  email_check = User.new(firstname: "First", lastname: "Last", email: "TEST@test.com", password: "password", password_confirmation: "password")
  

  describe 'Validations' do
    it 'has a password and password confirmation' do
      expect(password_match).to be_present
    end
    it 'has a matching password and password confirmation' do
      expect(password_match.password_confirmation).to match password_match.password
    end
    it 'is not valid when password and password confirmation do not match' do
      expect(password_no_match.password_confirmation).not_to match password_no_match.password
    end
    it 'has a unique email' do
      expect()
    end
    it 'has an email, first name and last name' do
    end
  end
end
