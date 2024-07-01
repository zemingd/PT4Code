n = gets.to_i
c = Array.new(5) { gets.to_i }

m = Array.new(5, 0)
m[0] = c[0]
1.step(4) do |i|
  m[i] = [m[i - 1], c[i]].min
end

puts (n + m[4] - 1) / m[4] + 4