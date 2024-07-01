n = gets.to_i
h = Hash.new(0)
n.times do
  s = gets.chars.sort.join
  h[s] += 1
end
sum = 0
h.values.each do |v|
  sum += v * (v - 1) / 2
end
puts sum