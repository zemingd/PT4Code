_ = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
map = Hash.new(0)
total = 0
arr.each do |i|
  map[i] += 1
  total += i
end
q = gets.chomp.to_i
q.times do
  b, c = gets.chomp.split(' ').map(&:to_i)
  count_b = map[b]
  map[c] += count_b
  total += (c - b) * count_b
  puts total
end