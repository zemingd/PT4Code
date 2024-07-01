n = STDIN.gets.chomp.to_i
h = STDIN.gets.chomp.split.map(&:to_i)

able = 0
max = 0

h.each do |i|
  if i >= max
    max = i
    able += 1
  end
end

puts able