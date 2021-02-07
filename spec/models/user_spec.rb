require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'creation' do
    it 'can be created' do
      user = User.create(username: "username11", password: "Password1", password_confirmation: "Password1", age: 10, weight: 10, goal_weight: 10, mf: 5, activity_level: 1.5, height: 167, water: 2, public: true)
        expect(user).to be_valid
    end 
  end
end
