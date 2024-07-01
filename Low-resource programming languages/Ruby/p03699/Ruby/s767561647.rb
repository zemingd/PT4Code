n = gets.to_i
tests = []
n.times { tests << gets.to_i }
tests.sort!
sum = tests.inject(:+)
if sum % 10 == 0
  if deduction = tests.find { |i| i % 10 != 0 }
    sum -= deduction
  else
    sum = 0
  end
end
puts sum
