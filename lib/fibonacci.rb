# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the value of the number n, the loop will trigger n times,
# with a constant number of steps each time.
# Space complexity: O(1) constant. No matter how big n gets, the same number of constant sized variables are needed.
def fibonacci(n)
  num_1 = 1
  num_2 = 0
  raise ArgumentError if n == nil || n < 0
  n.times do |number|
    temp = num_2
    num_2 = num_1
    num_1 += temp
  end
  return num_2
end
