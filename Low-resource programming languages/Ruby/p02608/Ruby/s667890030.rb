n = gets.to_i
1.upto(n) do |k|
  ans = 0
  a = 1
  num = 0
  while a**2 < k
    num+=1
    a+=1
  end
  b = (1..num).to_a
  ary = b.repeated_permutation(3).to_a
  ary.each do |i|
    ans+=1 if (i[0])**2+(i[1])**2+(i[2])**2+(i[0]*i[1]+i[1]*i[2]+i[2]*i[0]) == k
  end
  puts ans
end
