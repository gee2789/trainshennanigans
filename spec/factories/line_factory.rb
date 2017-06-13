FactoryGirl.define do
  factory :line, class: Line do
    association :line_group, factory: :line_group
    name "1"
  end
end
