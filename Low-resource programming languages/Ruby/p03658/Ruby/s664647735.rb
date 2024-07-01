n, k = gets.split.map(&:to_i)
s = gets.split.map(&:to_i).sort.reverse
ret = 0
for i in 0..k-1
  ret += s[i]
end

puts ret
