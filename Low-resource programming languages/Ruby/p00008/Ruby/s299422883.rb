# -*- coding: utf-8 -*-


while n = gets
  n = n.chomp.to_i
  ans = 0

  i = 0
  for i in (0..9)
    for j in (0..9)
      for k in (0..9)
        for l in (0..9)
          ans+=1 if i+j+k+l == n
        end
      end
    end
  end

  puts ans
end