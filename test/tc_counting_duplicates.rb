# COUNTING DUPLICATES

# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphanumeric characters, including digits, uppercase and lowercase alphabets.

# Example

# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabbcdeB" -> 2 # 'a' and 'b'
# "indivisibility" -> 1 # 'i'
# "Indivisibilities" -> 2 # 'i' and 's'
# "aa11" -> 2 # 'a' and '1'

require_relative "../src/counting_duplicates"
require "test/unit"

class TestCountingDuplicates < Test::Unit::TestCase
  def test_counting_duplicates
    count = Counting.new
    assert_equal(count.duplicate_count(""), 0)
    assert_equal(count.duplicate_count("abcde"), 0)
    assert_equal(count.duplicate_count("abcdeaa"), 1)
    assert_equal(count.duplicate_count("abcdeaB"), 2)
    assert_equal(count.duplicate_count("Indivisibilities"), 2)
  end
end


