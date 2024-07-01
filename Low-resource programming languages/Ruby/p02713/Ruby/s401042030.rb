# c
k = gets.to_i

sum = 0


(1..k).to_a.repeated_combination(3).to_a.each do |(a,b,c)|
  s = a.gcd(b).gcd(c)
  if a == b && b == c # 全部同じ (5,5,5) # 1通り
    sum += s
  elsif a == b || b == c || c == a # (4,4,6) # 3通り
    sum += s * 3
  else # (2 3 4) # 6通り
    sum += s * 6
  end
end
p sum








# 9 10813692

