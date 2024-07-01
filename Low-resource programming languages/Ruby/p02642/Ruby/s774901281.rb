require 'prime'

N = gets.to_i
a = []
a = gets.split.map(&:to_i)
a = a.sort
max = a.max
# a内での登場回数を数える配列
count = []
count = count.fill(0,0..max)
a.each do |num|
  count[num] += 1
end

puts "#{count.size}"

hurui = []
hurui = hurui.fill(false, 0..max)

ans = 0
a.uniq.each do |num|
  # 2回以上登場するものは条件を満たさないのでふるいにかける
  hurui[num] = true if count[num] >= 2
  # すでにふるいにかけた値が来たらcoutinue
  next if hurui[num]
  # ふるいにかけられていない中で，a内で1回だけ登場するならans+=1
  ans += 1 if count[num] == 1
  
  # numの倍数をふるいにかけていく
  (num*2).step(max+1, num) do |i|
    hurui[i] = true
  end
end

puts ans