N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

l = A.length
i = A.uniq
rl = i.length

if l != rl
  puts("NO")
else
puts("YES")
end