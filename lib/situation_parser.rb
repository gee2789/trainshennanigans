require 'Crack'
require 'open-uri'

class SituationParser
  attr_accessor :data

  def initialize(path = nil)
    @data = Crack::XML.parse(open(path))
  end

  def add
  end
end
