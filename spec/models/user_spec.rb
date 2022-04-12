require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(firstname: "First", lastname: "Last", email: "test@test.com", password: "password", password_confirmation: "password")
  }

  describe 'Validations' do
    it 'has an email' do
      expect(subject.email).to be_present 
    end
    it 'has a first name' do
      expect(subject.firstname).to be_present 
    end
    it 'has a last name' do
      expect(subject.lastname).to be_present 
    end
    it 'has a password' do
      expect(subject.password).to be_present
    end
    it 'has a password confirmation' do
      expect(subject.password_confirmation).to be_present
    end
    it 'has a matching password and password confirmation' do
      expect(subject.password_confirmation).to match subject.password
    end
    it 'is not valid when password and password confirmation do not match' do
      subject.password_confirmation = "wrong"
      expect(subject.password_confirmation).not_to match subject.password
    end
    it 'is not valid without a unique email' do
      new_subject = User.create(firstname: "New", lastname: "User", email: "test@test.com", password: "password2", password_confirmation: "password2")
      expect(subject).to_not be_valid
    end
    it 'is not valid with a password less than 8 characters' do
      subject.password = "wrong"
      expect(subject).to_not be_valid
    end

  end
end
