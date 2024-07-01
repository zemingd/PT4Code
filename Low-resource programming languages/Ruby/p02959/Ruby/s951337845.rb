def min(a,b); a < b ? a : b; end
N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
B << 0

total = 0
A.zip(B).inject(0) do |rest,(a,b)|
  x = min(a, rest)
  y = min(b, a - x)
  total += (x + y)
  b - y
end

puts total
