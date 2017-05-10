# Array.diff

# Your goal in this kata is to implement an difference function, which subtracts one list from another.

# It should remove all values from list a, which are present in list b.

# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:

# array_diff([1,2],[1]) == [2]

require 'spec_helper'

describe "array_diff" do
  it "Basic tests" do
    ad = ArrayDiff.new
    expect(ad.array_diff([1,2], [1])).to match([2])
    expect(ad.array_diff([1,2,2], [1])).to match([2,2])
    expect(ad.array_diff([1,2,2], [2])).to match([1])
    expect(ad.array_diff([1,2,2], [])).to match([1,2,2])
    expect(ad.array_diff([], [1,2])).to match([])
  end
end
