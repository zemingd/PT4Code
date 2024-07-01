n = gets.to_i
h = Hash.new(0)
max = 0
n.times do
  s = gets.chomp
  x = h[s] += 1
  max = [x, max].max
end

h.select do |k, v|
  v == max
end.keys.sort.each do |s|
  puts s
end