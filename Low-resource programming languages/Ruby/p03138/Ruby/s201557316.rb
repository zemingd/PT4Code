n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
bin = []
ans = []
bb =0
while k >0
  k =k/2
  bb +=1
end

200.times do
 bin << 0
end

a.each do |n|
  i =0
  n.to_s(2).split("").reverse.each do |m|
    bin[i] += m.to_i
    i += 1
  end
end

# puts a.length
ave = a.length / 2


bin.each do |n|
  if n >ave
    ans << 0
  else
    ans << 1
  end
end

ans2 = []
i = 0
bb.times do
  ans2 << ans[i]
  i +=1
end
ans2 = ans2.reverse.join.to_i(2)

sum = 0

a.each do |n|
  sum += n ^ ans2
end
puts sum
