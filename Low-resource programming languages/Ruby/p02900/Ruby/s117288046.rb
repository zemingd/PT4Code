a, b = gets.chop.split.map(&:to_i)

#a==bだけだめ！！！
if a == b
    ans = []

    #aのほうが小さいとする。
    root_a = a**(1/2.0)
    root_a = root_a.floor.to_i

    ans = []

    for index in 1..root_a
      if a % index == 0
        ans << index
        ans << a / index
      end
    end

else


  if a > b
    a, b = b, a
  end

  #aのほうが小さいとする。
  root_a = a**(1/2.0)
  root_a = root_a.floor.to_i

  ans = []

  for index in 1..root_a
    if b % index == 0 && a % index == 0
      ans << index
      ans << a / index
    end
  end

end

answer = 1

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

 print answer
