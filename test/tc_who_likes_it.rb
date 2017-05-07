# WHO LIKES IT?

# You probably know the "like" system from Facebook and other pages.
# People can "like" blog posts, pictures or other items.
# We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

# For more than 4 names, the number in and 2 others simply increases.

require_relative "../src/who_likes_it"
require "test/unit"

class TestWhoLikesIt < Test::Unit::TestCase
  def test_who_likes_it
    who = Like.new
    assert_equal(who.likes([]), 'no one likes this')
    assert_equal(who.likes(['Peter']), 'Peter likes this')
    assert_equal(who.likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
    assert_equal(who.likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
    assert_equal(who.likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
  end
end
