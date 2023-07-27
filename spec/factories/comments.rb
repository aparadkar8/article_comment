FactoryBot.define do
  factory :comment do
    association :article, factory: :article
    commenter {'Raj'}
    body {'Raj Ratan Bus service'}
  end
end 