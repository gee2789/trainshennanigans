class LineDirection < ApplicationRecord
  belongs_to :line
  has_many :situations
end
