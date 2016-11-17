require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context "some testing context" do
    it "create a Restaurant" do
      r = Restaurant.create!
      expect(r.reload).to eq(r)
    end
  end
end
