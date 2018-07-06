# Complete the body of the function shown below
# The input of the function accepts one argument
#   text: A string of length 2 characters or more containing a
#         combination of only the characters "(", "{", "[", "]", "}", ")"
#
# The function should return true iff the string is properly nested
#
# Examples:
# text = "[()()]", result = true
# text = "[(]()]", result = false
# text = "[{()}]", result = true
# text = "((()))", result = true
# text = "[(])", result = false
# text = "((())", result = false
# text = "()]]", result = false
# text = "()[]{}()[]{}", result = true


class Nesting

  # @param {String} text
  # @return {Boolean}
  def check_if_properly_nested(text)
    valid = true
    stack = []
    text.each_char do |c|
      case
      when c == "[" || c == "(" || c == "{"
        stack.push(c)
      when c == ")"
        left = stack.pop
        valid = false  if left != "("
      when c == "]"
        left = stack.pop
        valid = false  if left != "["
      when c == "}"
        left = stack.pop
        valid = false  if left != "{"
      end
    end
    valid && stack.empty?
  end
end