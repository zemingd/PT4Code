n = gets.to_i
c = 0
for i in 1..n
  c = 0
  for t in 1..i/3
    x = t
    for q in 1..i/3-t
      y = q
      for r in 1..i-(t+q)
        z = r
        if i == x*x + y*y + z*z + x*y + y*z + z*x
          c +=1
        end
      end
    end
  end
  puts c
end