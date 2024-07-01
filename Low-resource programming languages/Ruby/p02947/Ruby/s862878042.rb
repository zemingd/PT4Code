def sums(n)
  return n*(n+1)/2
end

n = gets.to_i
s = Array.new(n)
for i in 0..(n-1)
  s[i] = gets.chomp.split("").sort.join
end

strs = Hash.new(0)
for i in 0..(n-1)
  strs[s[i]] += 1
end
cnt = 0
strs.each do |key, val|
  cnt += sums(val-1) if val > 1
end
puts cnt