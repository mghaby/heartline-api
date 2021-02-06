require 'rails_helper'

describe "delete user route" do
    before(:each) do
        @user_one = create(:random_user)
        @user_two = create(:random_user)
    end
it 'should delete the user' do
get "/api/users"
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq([YAML.load(@user_one.to_json),YAML.load(@user_two.to_json),])

delete "/api/users/#{@user_one.id}"
      expect(response.status).to eq(204)
      
get "/api/users"
      expect(JSON.parse(response.body)).to eq([YAML.load(@user_two.to_json)])
    end
end