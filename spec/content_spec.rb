require './lib/content'

RSpec.describe Content do
  describe ".all" do
    it "returns an array of hashes" do
      expect(Content.all).to eq [
        { id: 1, published_at: Time.new(2016, 01, 01, 5, 0, 0) },
        { id: 2, published_at: Time.new(2016, 01, 01, 6, 0, 0) },
        { id: 2, published_at: Time.new(2016, 01, 01, 6, 30, 0) },
        { id: 3, published_at: Time.new(2016, 02, 01, 5, 0, 0) },
        { id: 4, published_at: Time.new(2016, 02, 01, 8, 0, 0) },
        { id: 5, published_at: Time.new(2016, 02, 01, 10, 0, 0) },
        { id: 6, published_at: Time.new(2016, 03, 01, 12, 0, 0) },
        { id: 6, published_at: Time.new(2016, 03, 01, 16, 0, 0) }
      ]
    end
  end

  describe  ".with_unique_identifiers_per_day" do
    it "returns an array of hashes with an incrementing unique identifier per content, resetting daily" do
      expect(Content.with_unique_identifiers_per_day).to eq [
        { id: 1, published_at: Time.new(2016, 01, 01, 5, 0, 0), identifier: "c0001" },
        { id: 2, published_at: Time.new(2016, 01, 01, 6, 0, 0), identifier: "c0002" },
        { id: 2, published_at: Time.new(2016, 01, 01, 6, 30, 0), identifier: "c0002" },
        { id: 3, published_at: Time.new(2016, 02, 01, 5, 0, 0), identifier: "c0001" },
        { id: 4, published_at: Time.new(2016, 02, 01, 8, 0, 0), identifier: "c0002" },
        { id: 5, published_at: Time.new(2016, 02, 01, 10, 0, 0), identifier: "c0003" },
        { id: 6, published_at: Time.new(2016, 03, 01, 12, 0, 0), identifier: "c0001" },
        { id: 6, published_at: Time.new(2016, 03, 01, 16, 0, 0), identifier: "c0001" }
      ]
    end
  end
end
