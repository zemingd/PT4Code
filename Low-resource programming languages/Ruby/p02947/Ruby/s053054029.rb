n = STDIN.gets.chomp.to_i
s = []
n.times { |i| s.push(STDIN.gets.chomp.chars.sort.join) }

h = Hash.new(0)
s.each do |str|
  h[str] += 1
end

result = 0
h.values.each do |v|
  result += v*(v-1)/2
end

puts result