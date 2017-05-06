# SELECTIVE ARRAY REVERSING

# Given an array, return the reversed version of the array (a different kind of reverse though),
# you reverse portions of the array, you'll be given a length argument which represents the length
# of each portion you are to reverse.

# E.g

# selReverse([1,2,3,4,5,6], 2)
#  //=> [2,1, 4,3, 6,5]
# if after reversing some portions of the array and the length of the remaining portion in the
#   array is not up to the length argument, just reverse them.

# selReverse([2,4,6,8,10,12,14,16], 3)
#  //=> [6,4,2, 12,10,8, 16,14]
# selReverse(array, length)

# array - array to reverse
# length - length of each portion to reverse
# Note : if the length argument exceeds the array length, reverse all of them,
# if the length argument is zero do not reverse at all.

require 'spec_helper'

describe "sel_reverse" do
  it "Basic tests" do
    s = SelectiveArrayReversing.new
    expect(s.sel_reverse([2,4,6,8,10,12,14,16], 3)).to match([6,4,2, 12,10,8, 16,14])
    expect(s.sel_reverse([2,4,6,8,10,12,14,16], 2)).to match([4,2, 8,6, 12,10, 16,14])
    expect(s.sel_reverse([1,2,3,4,5,6], 2)).to match([2,1, 4,3, 6,5])
    expect(s.sel_reverse([1,2,3,4,5,6], 0)).to match([1,2,3,4,5,6])
    expect(s.sel_reverse([1,2,3,4,5,6], 10)).to match([6,5,4,3,2,1])
  end
end
