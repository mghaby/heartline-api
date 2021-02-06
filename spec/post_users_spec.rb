require 'rails_helper'

describe "post a user route", :type => :request do
        
before do
    post '/api/users/', params: { :username => 'test_username', :password => 'test_password', :password_confirmation => 'test_password_confirmation', :age => 20, :height => 167 , :weight => 73, :public => true, :water => 2, :activity_level => 2, :mf => 5 }
  end
  
it 'returns the username' do
    expect(JSON.parse(response.body)['username']).to eq('test_username')
  end
it 'returns the users\'s password' do
    expect(JSON.parse(response.body)['password']).to eq('test_password')
  end
it 'returns the users\'s password_confirmation' do
    expect(JSON.parse(response.body)['password_confirmation']).to eq('test_password_confirmation')
    end
it 'returns the users\'s age' do
    expect(JSON.parse(response.body)['age']).to eq('test_age')
    end
it 'returns the users\'s height' do
    expect(JSON.parse(response.body)['height']).to eq('test_height')
    end
it 'returns the users\'s weight' do
    expect(JSON.parse(response.body)['weight']).to eq('test_weight')
    end
it 'returns the users\'s public' do
    expect(JSON.parse(response.body)['public']).to eq('test_public')
    end
it 'returns the users\'s water' do
    expect(JSON.parse(response.body)['water']).to eq('test_water')
    end
it 'returns the users\'s activity_level' do
    expect(JSON.parse(response.body)['activity_level']).to eq('test_activity_level')
    end
it 'returns the users\'s mf' do
    expect(JSON.parse(response.body)['mf']).to eq('test_mf')
    end
it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
