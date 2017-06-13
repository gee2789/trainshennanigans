require 'rails_helper'
require 'situation_parser'

describe SituationParser do
  let(:path) {
    Rails.root.join("spec","fixtures","ServiceStatusSubway.xml")
  }
  let(:parser) { SituationParser.new(path) }

  describe '#initialize' do
    it "parses the data and is accessible" do
      expected_data = Crack::XML.parse(open(path))
      expect(parser.data).to eq(expected_data)
    end
  end

  describe '#add' do
    pending
  end
end
