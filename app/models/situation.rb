class Situation < ApplicationRecord
  belongs_to :line_direction
  # belongs to line through line_direction
end
