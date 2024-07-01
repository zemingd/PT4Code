N, X = gets.split(' ').map(&:to_i)
x = gets.split(' ').map(&:to_i)

d = (X - x[0]).abs
1.upto(N - 1) do |i|
  d = d.gcd((X - x[i]))
end

puts d