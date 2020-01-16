FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 6)
    name {Faker::Name.first_name}
    email {Faker::Internet.free_email}
    sex {Faker::Number.within(range: 1..2)}
    password {password}
    password_confirmation {password}
  end
end
