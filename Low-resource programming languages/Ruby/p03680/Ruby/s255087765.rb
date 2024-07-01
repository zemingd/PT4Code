n = gets.to_i
num = []
n.times do
  num << gets.to_i
end

rec = [1] #光ったことのあるボタンを記録
i = 0
while i >= 0 do
  unless rec.include?(num[rec[i]-1])
    rec << num[rec[i]-1]
  else
    break
  end
  i += 1
end
if rec.include?(2)
  puts rec.index(2)
else
  puts "-1"
end