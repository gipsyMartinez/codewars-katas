# MUMBLING

# This time no story, no theory. The examples below show you how to write function accum:

# Examples:
# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"

# The parameter of accum is a string which includes only letters from a..z and A..Z.

class Mumbling

  def accum(s)
    arr = []
    (s.chars).each_with_index do |letter, i|
      i += 1
      i.times{ arr << letter }
      arr << "-"
    end
    arr.join("").split(/\W+/).map(&:capitalize).join('-')
  end

end
