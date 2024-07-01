n,m = gets.chomp.split.map(&:to_i)
town = Array.new(n,0)
m.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  town[a - 1] += 1
  town[b - 1] += 1
end

town.size.times do |i|
  puts town[i]
end