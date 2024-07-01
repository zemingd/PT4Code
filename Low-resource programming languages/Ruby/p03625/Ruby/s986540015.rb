n = gets.to_i
num = gets.strip.split.map(&:to_i)
rec = Hash.new()
for i in 0..n-1
  if rec.key?(num[i])
    rec[num[i]] += 1
  else
    rec[num[i]] = 1
  end
end
rec.delete_if{|key,value| value < 2}
a = rec.to_a
if a.size == 0
  puts 0
  exit
end
w1 = a[-1][0] #最大辺
a[-1][1] -= 2 #２本使用済み
a.delete_if{|x| x[1].to_i < 2}
if a.size == 0
  puts 0
  exit
end
w2 = a[-1][0]

puts w1*w2