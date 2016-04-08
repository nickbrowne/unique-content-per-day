class Content
  def self.all
    content = [
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


  # This method needs to return the array above, but with each hash
  # containing an incrementing unique identifier (c0001) for each item.
  #
  # Content with the same id must have the same unique identifier on that day.
  #
  # The incrementing unique identifier must reset on each calendar day.
  def self.with_unique_identifiers_per_day
    # TODO: implement this method!
  end
end
