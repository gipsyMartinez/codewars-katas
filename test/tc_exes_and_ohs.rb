# EXES AND OHS

# Check to see if a string has the same amount of 'x's and 'o's.
# The method must return a boolean and be case insensitive. The string can contains any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false


require_relative "../src/exes_and_ohs"
require "test/unit"

class TestExesAndOhs < Test::Unit::TestCase

  def test_XO
    exes_and_ohs = ExesAndOhs.new
    assert_equal(exes_and_ohs.XO('xo'),true)
    assert_equal(exes_and_ohs.XO('XO'),true)
    assert_equal(exes_and_ohs.XO('xo0'),true)
    assert_equal(exes_and_ohs.XO('xxxoo'),false)
    assert_equal(exes_and_ohs.XO("xxOo"),true)
  end

end


