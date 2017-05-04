# FRIEND OR FOE?

# Make a program that filters a list of strings and returns a list with only your friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours!
# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

require_relative "../src/friend_or_foe"
require "test/unit"

class TestFriendOrFoe < Test::Unit::TestCase

  def test_friend
    assert_equal(FriendOrFoe.new.friend(["Ryan", "Kieran", "Mark"]), ["Ryan", "Mark"])
    assert_equal(FriendOrFoe.new.friend(["Ryan", "Jimmy", "123", "4", "Cool Man"]), ["Ryan"])
    assert_equal(FriendOrFoe.new.friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"]), ["Jimm", "Cari", "aret"])
    assert_equal(FriendOrFoe.new.friend(["Love", "Your", "Face", "1"]), ["Love", "Your", "Face"])
  end

end
