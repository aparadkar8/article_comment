FactoryBot.define do
  factory :comment do
    association :article
    commenter {'Raj'}
    body {'Raj Ratan Bus service'}
  end
end 