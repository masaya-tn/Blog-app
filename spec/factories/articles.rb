FactoryBot.define do
  factory :article do
    title {'テストを書く'}
    content {'RSpec&Capybara&FactoryBotを準備する'}
    user
  end
end