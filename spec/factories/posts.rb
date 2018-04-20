FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    user
    status "submitted"
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
    status "submitted"
  end
end
