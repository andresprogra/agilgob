FactoryBot.define do
  factory :author do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    nacionality { Faker::Nation.nationality }
    review { Faker::Lorem.paragraph }
    factory :author_invalid do
      name { nil }
    end
  end
end
