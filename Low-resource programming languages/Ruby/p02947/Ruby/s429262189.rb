n = gets.to_i
h = Hash.new(0)
n.times do
  s = gets.chomp.chars.sort.join
  h[s] += 1
end

ans = h.values.reduce(0) {|acc, v| acc + (0..(v-1)).reduce(:+) }
puts ans

