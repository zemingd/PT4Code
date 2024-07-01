n,k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
parray =[]
max = k.to_s(2)
keta = max.size
array.size.times do |i|
  parray[i] = "%0*b" % [keta, array[i]]
#  puts parray[i]
end
ans =""
keta.times do |i|
  cnt = 0
  n.times do |j|
    if parray[j][i] == "0"
      cnt += 1
    end
  end
  if cnt <= n/2
    ans = ans + "0"
  else
    ans = ans + "1"
  end
end
if ans.to_i(2) > k
keta.times do |i|
  if ans[i] != max[i]
    ans[i] = max[i]
    if ans.to_i(2) <= k
      break
    end
  end
end
end
x = ans.to_i(2)

sum = 0
n.times do |i|
  sum += x^array[i]
end
puts sum
