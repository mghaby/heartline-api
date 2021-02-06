FactoryBot.define do
    service_array = ["Test Service", "Test Service Two"]
    letter = ["a", "b", "c", "d"]

  factory :random_user, class: User do
      username { Faker::Name.unqiue.name }
      password { Faker::Internet.password(min_length: 8) }
      password_confirmation { Faker::Internet.password(min_length: 8) }
      age { Faker::Number.between(18, 80) }
      height { Faker::Number.between(130, 250) }
      weight { Faker::Number.between(30, 400) }
      public { Faker::Boolean.boolean(true_ratio: 0.5) }
      water { Faker::Number.between(2, 6) }
      activity_level { Faker::Number.between(1, 2) }
      mf { Faker::Number.between(1, 100) }
      
    end
  end