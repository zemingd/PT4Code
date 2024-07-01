n = gets.to_i
tests = []
n.times do
  tests << gets.to_i
end
# binding.pry
tests.sort!
sum = tests.inject(:+)
i = 0
loop do
  if sum % 10 != 0 || sum == 0
    puts sum
    break
  end
  sum -= tests[i]
  i += 1
end