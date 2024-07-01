h = Hash.new(0)
gets.to_i.times do
  a = gets.to_i
  h[a] = h[a] == 0 ? 1 : 0
end

puts h.values.inject(:+)