n,k = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
t = num.uniq.size
if t <= k
  puts 0
else
  rec = Array.new(n,0)
  n.times do |i|
    rec[num[i]-1] += 1
  end
  rec.sort!
  i = 0
  sum = 0
  while sum < t-k
    sum += rec[i]
    i += 1
  end
  puts sum
end