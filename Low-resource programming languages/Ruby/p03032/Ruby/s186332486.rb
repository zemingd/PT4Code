n = gets.split.map(&:to_i)
je = gets.split.map(&:to_i)
jewel = Array.new(n[0]).map{Array.new(2,0)}
for i in 0..n[0]-1
  jewel[i][0] = je[i]
  jewel[i][1] = i
end
jewel_s = jewel.sort
ans = 10**10
for i in n[0]-n[1]..n[0]
  check = Array.new(n[0],0)
  result1 = 0
  for j in 0..i-1
    check[j] = 1
    result1 += jewel[j][0]
  end
  count = 0
  result2 = 0
  for j in 0..n[0]-1
    break if count >= i-(n[0]-n[1])
    if check[jewel_s[j][1]] == 0 && jewel_s[j][0] < 0
      result2 += jewel_s[j][0]
      count += 1
    end
  end
  ans = result1 + result2 if ans > result1 + result2
  for k in i..n[0]-1
    check[k-i] = 0
    result1 -= jewel[k-i][0]
    check[k] = 1
    result1 += jewel[k][0]
    count = 0
    result2 = 0
    for j in 0..n[0]-1
      break if count >= i-(n[0]-n[1])
      if check[jewel_s[j][1]] == 0 && jewel_s[j][0] < 0
        result2 += jewel_s[j][0]
        count += 1
      end
      ans = result1 + result2 if ans > result1 + result2
    end
  end
end
final = 0
n[0].times{|i| final += jewel[i][0]}
puts final - ans
