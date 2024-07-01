a, b = gets.chop.split.map(&:to_i)


if a > b
  a, b = b, a
end

#aのほうが小さいとする。

root_a = a**(1/2.0)

root_a = root_a.floor.to_i

ans = []

# puts root_a

for i in 1..root_a
  if b % i == 0 && a % i == 0
    ans << i
  end
end



answer = 0

ans.each{ |i|
  if i == 1
    next
  end
  flag = 1

  #あるiに対して全てを割ってみる
  ans.each{ |j|
    if j == 1 || i == j
      next
    end

    if i % j == 0
      flag = 0
      break
    end
   }

   if flag == 1
     answer += 1
   end
 }

 print answer+1
