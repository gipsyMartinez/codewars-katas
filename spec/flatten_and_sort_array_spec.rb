# FLATTEN AND SORT AN ARRAY

# Challenge:

# Given a two-dimensional array of integers, return the flattened version of the array with all
# the integers in the sorted (ascending) order.

# Example:

# Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].
require 'spec_helper'

describe "flatten_and_sort" do
  it "Basic tests" do
    array = FlattenAndSort.new
    expect(array.flatten_and_sort([[]])).to  match([])
    expect(array.flatten_and_sort([[], []])).to  match([])
    expect(array.flatten_and_sort([[], [1]])).to match([1])
    expect(array.flatten_and_sort([[], [], [], [2], [], [1]])).to match([1, 2])
    expect(array.flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]])).to match([1, 2, 3, 4, 5, 6, 7, 8, 9])
    expect(array.flatten_and_sort([[1, 3, 5], [100], [2, 4, 6]])).to match([1, 2, 3, 4, 5, 6, 100])
    expect(array.flatten_and_sort([[111, 999], [222], [333], [444], [888], [777], [666], [555]])).to match([111, 222, 333, 444, 555, 666, 777, 888, 999])
    expect(array.flatten_and_sort([[9, 7, 5, 3, 1], [8, 6, 4, 2, 0], [], [1]])).to match([0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    expect(array.flatten_and_sort([[1], [], [1], [], [], [-1, -2, -1], [0, 3], [1], [2]])).to match([-2, -1, -1, 0, 1, 1, 1, 2, 3])
    expect(array.flatten_and_sort([[], [], [64], [], [504, 503], [4096], [], [303], [202], [2500], [], [100]])).to match([64, 100, 202, 303, 503, 504, 2500, 4096])
    expect(array.flatten_and_sort([[90, 81, 72], [63, 54, 35], [], [46], [27, 18, 0]])).to match([0, 18, 27, 35, 46, 54, 63, 72, 81, 90])
    expect(array.flatten_and_sort([[1], [], [1], [1], [0], [-1], [], [0], [-1], [0], [-1]])).to match([-1, -1, -1, 0, 0, 0, 1, 1, 1])
    expect(array.flatten_and_sort([[-9, -8, -7, -6, -5, -4, -3, -2, -1]])).to match([-9, -8, -7, -6, -5, -4, -3, -2, -1])
    expect(array.flatten_and_sort([[9, 8, 7, 6, 5, 4, 3, 2, 1]])).to match([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
end
