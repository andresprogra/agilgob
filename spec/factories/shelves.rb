FactoryBot.define do
  factory :shelf do
    pasillo { "Alfa" }
    levels { "2" }
    factory :shelf_invalid do
      pasillo {nil}
      levels {nil}
    end
  end
end
