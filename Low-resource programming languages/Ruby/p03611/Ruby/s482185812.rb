n = gets.to_i
num = gets.strip.split.map(&:to_i)
rec = Array.new(10**5+2,0)
for i in 0..n-1
  rec[num[i]] += 1
  rec[num[i]+1] += 1
  rec[num[i]+2] += 1
end
puts rec.max