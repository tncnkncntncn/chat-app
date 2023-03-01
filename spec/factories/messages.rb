FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room
    
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/wonder-day-among-us-png-29.png'), filename: 'test_image.png')
      #afterメソッドを用いて、生成するダミーデータに画像を添付
  end

end
end