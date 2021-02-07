require 'rails_helper'

RSpec.describe "Users", type: :request do
    describe 'create' do
        it 'successfully creates a new user' do
          expect{
              post :create, params: { :user => { :username => "testuser", :password => "Password1", :password_confirmation => "Password1", :age => 10, :weight => 10, :goal_weight => 20, :mf => 5, :activity_level => 1.5, :height => 167, :water => 2, :public => true } }
            }.to change(User,:count).by(1)
        end
    end

    describe 'random' do
        it 'sucessfully selects a random user, with public set to true' do
            expect{
                get :random
            }.to be_valid
        end
    end

    describe 'show' do
        it 'sucessfully returns user data on their id' do
            expect{
                get :show, params: { :user => {
                    :id => 1 }}
                }.to be_valid
        end
    end

    describe 'update' do
        it 'sucessfully updates user based on id' do
            expect{
                put :update, params: {
                    :user => {:id => 1, :height => 199}}
                }.to be_valid
        end
    end

    describe 'destroy' do
        it 'sucesfully destroyes user based on id' do
            expect{
                delete :destroy, params: {
                    :user => {:id => 2}
                }
            }.to be_valid
        end
    end

    describe 'sign_in' do
        it 'sucessfully signs in user' do
            expect{
                post :sign_in, params: {:username => "test23", :password => "Password1"}
            }
        end
    end

end
