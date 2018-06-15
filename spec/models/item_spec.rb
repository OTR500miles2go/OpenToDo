require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }

  it { is_expected.to belong_to(:list) }
  it { is_expected.to validate_presence_of(:name) }

  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_attributes(name: item.name)
    end
  end
end