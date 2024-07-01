n = gets.to_i
c = 0
for i in 1..n
  c = 0
  for t in 1..i/3
    x = t
    for q in 1..i-t
      y = q
      for r in 1..i-(t+q)
        z = r
        ch = x*x + y*y + z*z + x*y + y*z + z*x
        if i == ch
          c +=1
        end
      end
    end
  end
  puts c
end