# Complete the body of the function shown below
# The input of the function accepts two arguments
#   s: A string of length 0 or more characters
#   t: A string of length 0 or more characters
#
# The function should return true iff the strings are anagrams of each other
# Characters are case sensitive.
# Assume that the string is not UTF.
#
# Examples:
# s = "binary", t = "brainy" result = true
# s = "rat", t = "car" result = false
# s = "BAT", t = "tab" result = false (different case)
# s = "rail safety", t = "fairy tales" result = true
# s = "the eyes", t = "they see" result = true
# s = "debit card", t = "bad credit" result = true
# s = "action man", t = "cannot aim" result = true
# s = "", t = "" result = true
# s = "batt", t = "tab" result = false


class ValidAnagram

  # @param {String} s
  # @param {String} t
  # @return {Boolean}
  def is_anagram(s, t)
    s.each_char do |c|
      puts c.ord
    end
    nil
  end
end

ValidAnagram.new.is_anagram("bat", "tab")