a,b,c,d = gets.chomp.split(" ").map(&:to_i)

alice = Array.new(100, 0)
bob = Array.new(100, 0)

100.times do |i|
  alice[i] = 1 if i >= a && i < b
end

100.times do |i|
  bob[i] = 1 if i >= c && i < d
end

counter = 0
100.times do |i|
  counter += 1 if alice[i] * bob[i] == 1
end

print(counter)