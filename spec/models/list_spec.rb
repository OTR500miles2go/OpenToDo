require 'rails_helper'

# Test suite for the List model
RSpec.describe List, type: :model do 
  let(:list) { create(:list) }
  let(:private) { true }

  # Association test, 1:m relationship with Item model
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:items) }

  # Validation tests, 
  # columns title and created_by are present before saving
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:created_by) }

  describe "attributes" do
    it "responds to title and created_by attributes" do
      expect(list).to have_attributes(title: list.title, created_by: list.created_by)
    end

    it "is private by default" do
      expect(list.private).to be(true)
    end
  end
end