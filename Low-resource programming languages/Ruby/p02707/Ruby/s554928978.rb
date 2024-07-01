n = gets.to_i
a = gets.split.map(&:to_i)
e = Array.new(n, 0)
a.each do |i|
  e[i-1] += 1
end
e.each do |i|
  puts i
end