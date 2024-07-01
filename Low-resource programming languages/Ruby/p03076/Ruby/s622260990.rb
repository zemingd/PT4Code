a, b, c, d, e = readlines.map &:to_i
array = [a, b, c, d, e]

def calculate(v)
  i = v % 10
  (10 - i) % 10
end

sum = 0
array.sort! { |x, y| calculate(x) <=> calculate(y) }
array.each do |i|
  sum += i + calculate(i)
end
puts sum - calculate(array.last)
