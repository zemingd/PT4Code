n = gets.to_i
tests = []
n.times { tests << gets.to_i }
tests.sort!
sum = tests.inject(:+)
until sum % 10 != 0 || sum == 0
  sum -= tests.shift
end
puts sum
