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
#一個以下のやつを全て削除
rec.delete_if{|key,value| value < 2}
#配列化
a = rec.to_a
#これでキーはになっている
if a.size < 2
  puts 0
  exit
end
puts a[-1][0]*a[-2][0]