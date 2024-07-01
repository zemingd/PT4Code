n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

sorted_p = p.sort

count = 0
n.times do |i|
  count += 1 if p[i] != sorted_p[i]
end

if count == 0 || count == 2
  puts("YES")
else
  puts("NO")
end