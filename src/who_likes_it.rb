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

class Like
  def likes(names)
    like_text = names.size == 1 ? ' likes this' : ' like this'
    names_list = names.join(" and ")
    if names.size >= 3
      arr = names.clone
      (names.size-2).times{arr.pop}
      like_text = names.size == 3 ? " and #{names.last} like this" : " and #{names.size-2} others like this"
      names_list = arr.join(", ")
    end
    names.empty? ? "no one likes this" : names_list + like_text
  end
end
