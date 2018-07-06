# Complete the body of the function shown below
# The input of the function accepts one argument
#   text: A string of length 0 characters or more
#
# The function should return the first character that doesn't repeat
# or an empty string if there isn't one
#
# character equality is case sensitive, i.e. "a" is not equal to "A"
#
# Examples:
# text = "seashore", result = "a" since both "s" and "e" repeat
# text = "fudgefudge", result = "" since all of the characters repeat
# text = "learning javascript is pretty lame", result = "g"
# text = "", result = ""

class FirstNonRepeating

  # @param {String} text
  # @return {String}
  def find_first_non_repeating(text)
    table = Array.new(256,0)
    text.each_char do |c|
      table[c.ord] += 1
    end
    result = ""
    text.each_char do |c|
      if table[c.ord] == 1
        result = c
        break
      end
    end
    result
  end
end