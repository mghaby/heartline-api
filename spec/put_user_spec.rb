require 'rails_helper'

describe "PUT /api/users/:id" do
    before(:each) do
        @user = create(:random_user)
      end
    it 'updates a user' do
    @new_username = Faker::Name.unqiue.name
        @new_password = Faker::Internet.password(min_length: 8)
    put "/@user.id">api/users/#{@user.id}", params: { :username => 'test_username', :password => 'test_password', :password_confirmation => 'test_password_confirmation', :age => 20, :height => 167 , :weight => 73, :public => true, :water => 2, :activity_level => 2, :mf => 5 }
    expect(response.status).to eq(202)
        expect(User.find(@user.id).username).to eq(@new_username)
        expect(User.find(@user.id).password).to eq(@new_password)
      end
    end