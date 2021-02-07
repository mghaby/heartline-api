require 'rails_helper'

RSpec.describe "Users", type: :request do
    describe 'create' do
        it 'successfully creates a new user' do
          expect{
              post :create, params: { :user => { :username => "testuser", :password => "Password1", :password_confirmation => "Password1", :age => 10, :weight => 10, :goal_weight => 20, :mf => 5, :activity_level => 1.5, :height => 167, :water => 2, :public => true } }
            }.to change(User,:count).by(1)
        end
    end
end
