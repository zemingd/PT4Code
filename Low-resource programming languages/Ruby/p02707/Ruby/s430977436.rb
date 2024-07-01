n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(n,0)
a.each do |i|
  b[i-1] += 1
end
b.each do |j|
  puts j
end
