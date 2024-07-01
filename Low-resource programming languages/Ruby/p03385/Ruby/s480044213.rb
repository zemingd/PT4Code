s = gets.chomp!
a = Array.new(3,0)
s.each_char do |c|
  a[c.ord-97] += 1
end

cnt = 0
a.each do |i|
  cnt += 1 if a[i] == 1
end

puts cnt == 3 ? "Yes" : "No"
