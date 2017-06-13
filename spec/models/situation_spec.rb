require 'rails_helper'

describe Situation do
  describe '#create' do
    context 'when XML file is valid' do
      let(:xml) {
        doc = open(Rails.root.join("spec","fixtures","ServiceStatusSubway.xml"))
        Crack::XML.parse(doc)
      }
      let(:situation) {
        create(:situation, raw_)
      }

      before do

      end

      it "properly saves the situation time" do

      end
    end
    context 'when XML file is not valid' do
    end
  end
end
