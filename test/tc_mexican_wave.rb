# MEXICAN WAVE

# Task

#   In this simple Kata your task is to create a function that turns a string into a Mexican Wave.
#   You will be passed a string and you must return that string in an array where an uppercase
#   letter is a person standing up.

# Rules

#   1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
# Example

# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# Good luck and enjoy!


require_relative "../src/mexican_wave"
require "test/unit"

class TestMexicanWave < Test::Unit::TestCase
  def test_mexican_wave
    mx = MexicanWave.new
    result = ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
    assert_equal(mx.wave("hello"), result, "Should return: '#{result}'")

    result = ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
    assert_equal(mx.wave("codewars"), result, "Should return: '#{result}'")

    result = []
    assert_equal(mx.wave(""), result, "Should return: '#{result}'")

    result = ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
    assert_equal(mx.wave("two words"), result, "Should return: '#{result}'")

    result = [" Gap ", " gAp ", " gaP "]
    assert_equal(mx.wave(" gap "), result, "Should return: '#{result}'")
  end
end



