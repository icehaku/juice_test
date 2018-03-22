FactoryBot.define do
  factory :search do
    term  Faker::Lorem.sentence

    trait :submitted do
        submitted true
      end

    trait :incomplete do
      submitted false
    end
  end
end
