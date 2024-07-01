n = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new(0)
n.times.map do |i|
  h[i + 1] = a[i]
end

puts h.sort_by(&:last).to_h.keys.join(' ')
