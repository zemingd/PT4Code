N = gets.to_i
A = gets.split.map(&:to_i)

min = 10**5 + 1
sum = 0
negatives = 0
A.each do |a|
  sum += a.abs
  if a < 0
    negatives += 1
  end
  if min > a.abs
    min = a.abs
  end
end

# p min, sum, negatives

if negatives % 2 == 0
  p sum
else
  p sum - 2*min
end
