x, y = gets.split.map(&:to_i)
ary1 = [1, 3, 5, 7, 8, 10, 12]
ary2 = [4, 6, 9, 11]
ary3 = [2]

tnp1 = ary1.count(x) + ary1.count(y)
tnp2 = ary2.count(x) + ary2.count(y)
tnp3 = ary3.count(x) + ary3.count(y)

if tnp1 == 2 || tnp2 == 2 || tnp3 == 2
  puts :Yes
else
  puts :No
end

