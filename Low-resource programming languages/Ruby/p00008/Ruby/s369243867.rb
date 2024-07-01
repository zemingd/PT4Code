# -*- coding: utf-8 -*-


while n = gets

  n = n.chomp.to_i
  ans = 0

  i = 0
  while i<=9
    j = 0
    while j<=9
      k = 0
      while k<=9
        l = 0
        while l<=9
          ans+=1 if i+j+k+l == n
          l+=1
        end
        k+=1
      end
      j+=1
    end
    i+=1
  end

  puts ans

end