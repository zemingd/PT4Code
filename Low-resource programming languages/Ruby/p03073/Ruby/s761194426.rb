s = gets.chomp.split('').map(&:to_i)
hoge = 0
count1 = 0
s.each do |tile|
  count1 += 1 if (tile != hoge)
  hoge = hoge==0 ? 1 : 0
end

hoge = 1
count2 = 0
s.each do |tile|
  count2 += 1 if (tile != hoge)
  hoge = hoge==0 ? 1 : 0
end

puts [count1,count2].min