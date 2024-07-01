n = gets.to_i
s = gets.chomp.chars

w = Array.new(n, 0)
e = Array.new(n, 0)

0.step(n - 1) do |i|
  if i != 0
    w[i] = w[i - 1]
    w[i] += 1 if s[i - 1] == "W"
    e[n - 1 - i] = e[n - i]
    e[n - 1 - i] += 1 if s[n - i] == "E"
  end
end
puts (0...n).to_a.map {|i| w[i] + e[i] }.min