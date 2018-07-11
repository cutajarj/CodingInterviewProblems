# Complete the body of the function shown below
# The input of the function accepts one argument
#   a: Array of type integer of size between 2 and 2^31
#      the array contains a sequence starting from 0 and the following progression
#      [0,2,4,6,8,10 ... ]
# The array may contain one missing number for example, [0,2,4,6,10,12] is missing 8
# When this happens return the missing number. If there is no missing number return -1
#
# Examples:
# a = [0,2,4,8,10], result = 6
# a = [0,2,4,6,8,10], result = -1
# a = [0,2,4,6,10], result = 8
# a = [2,4,6], result = 0
#

class MissingPlusTwo

  # @param {Array} a
  # @return {Integer}
  def find_missing_number(a)
    start = 0
    finish = a.length - 1
    missing = -1
    while start <= finish do
      mid = (finish - start / 2) + start
      if a[mid] == mid * 2
        start = mid + 1
        missing = a[mid] + 2
      else
        finish = mid - 1
        missing = a[mid] - 2
      end
    end
    last = a.length - 1
    a[last] == last * 2 ? -1 : missing
  end
end
