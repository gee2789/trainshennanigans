FactoryGirl.define do
  factory :line_direction, class: LineDirection do
    association :line, factory: :line
    direction 0
    name "Uptown"    
  end
end
