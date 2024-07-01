LIMIT = 10 ** 18
n = gets.to_i
a = gets.split.map(&:to_i)
prod = 1
if a.include?(0)
  prod = 0
else
  a.each do |v|
    prod *= v
    if prod > LIMIT
      prod = -1
      break
    end
  end
end
puts prod
