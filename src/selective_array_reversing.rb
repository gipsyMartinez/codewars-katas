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

class SelectiveArrayReversing

  def sel_reverse(arr,l)
    l == 0 ? arr : (arr.each_slice(l).to_a).each{ |a| a.reverse! }.flatten
  end

end
