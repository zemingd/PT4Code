# input
n = gets.chomp.to_i
str = gets.chomp
min = 3*(10**5)

n.times do |i|
  # 親を決める
  count = 0
  i.times do |j|
    # 親より左側の人の処理
    count +=1 if str[j]!="E"
  end
  (n-1-i).times do |j|
    # 親より左側の人の処理
    count += 1 if str[i+j+1]!="W"
  end
  min = [min, count].min
end
puts min
