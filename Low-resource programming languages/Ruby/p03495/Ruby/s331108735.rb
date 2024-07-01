n,k = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
t = num.uniq.size
rec = Array.new(n,0)
for i in 0..n-1
  rec[num[i]-1] += 1
end
rec.sort!
rec.delete(0)
if t <= k
  puts 0
  exit
end
#ここからは取り除きが発生する場合のみ
sum = 0
for j in 0..t-k-1
  sum += rec[j]
end
puts sum