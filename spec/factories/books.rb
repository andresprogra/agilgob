FactoryBot.define do
  factory :book do
    title { Faker::Lorem.word}
    editorial { Faker::Lorem.word }
    year_edition { "2018" }
    isbn { Faker::Alphanumeric.alphanumeric 18 }
    author { create(:author) }
    shelf { create(:shelf) }
    num_edition { "2" }
    factory :book_invalid do 
      title { nil}
      editorial { nil }
      year_edition { "2018" }
      isbn { nil }
      author { nil }
      shelf { nil }
      num_edition { "2" }
    end
  end
end
