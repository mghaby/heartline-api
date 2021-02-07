require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'creation' do
    it 'can be created' do
      user = User.create(username: "username11", password: "Password1", password_confirmation: "Password1", age: 10, weight: 10, goal_weight: 10, mf: 5, activity_level: 1.5, height: 167, water: 2, public: true)
        expect(user).to be_valid
    end 
  end

  describe 'show' do
    it 'can be shown by id' do
      user = User.show(id: 1)
      expect (user).to be_valid
    end
  end 

    # get help for this
  # describe 'update' do
  #   it 'user can be updated' do
  #     user = User.update(height: 199)
  #     expect(user.height = 199).to be_valid
  #   end
  # end

  describe 'random' do
    it 'provides random user data' do
      user = User.random
      expect(user).to be_valid
    end
  end

  #   use logic from update for this 
  # describe 'delete' do
  #   it 'deletes user baed on id'

  describe 'sign_in' do
    it 'signs in the user' do
      auth_user = User.sign_in(username: "test23", password: "Password1")
      expect(auth_user).to be_valid
    end
  end


end
