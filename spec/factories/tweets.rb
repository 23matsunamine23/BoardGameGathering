FactoryBot.define do
  factory :tweet do
    body {Faker::Lorem.sentence}
    image1 {File.open("#{Rails.root}/app/assets/images/catan.jpg")}
    image2 {File.open("#{Rails.root}/app/assets/images/カルカソンヌ.jpg")}
    user
  end
end