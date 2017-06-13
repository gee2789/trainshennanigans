FactoryGirl.define do
  factory :situation, class: Situation do
    association :line_direction, factory: :line_direction
    resolved false
    severity nil
    started_at Time.now
    creation_time Time.now
    description "some situation in my business"
    reason "trains be ded"
    planned false
    raw_data '{"json":true}'
  end
end
