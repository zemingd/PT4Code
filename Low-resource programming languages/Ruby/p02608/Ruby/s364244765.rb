n = gets.to_i
c = 0
for i in 1..n
  c = 0
  max = i/3
  for t in 1..max
    x = t
    if c != 0
      break
    end
    for q in 1..i/3+3-t
      y = q
      if c != 0
        break
      end
      for r in 1..i/3+3-(t+q)
        z = r
        ch = x*x + y*y + z*z + x*y + y*z + z*x
        if i == ch
          if x == y && y == z
            c = 1
            break
          elsif x == y || y == z || z == x
            printf("%d,%d,%d\t",x,y,z)
            c += 3
            break
          else
            printf("%d,%d,%d\t",x,y,z)
            c += 9
            break
          end
        elsif i < ch
          break
        end
      end
    end
  end
  puts c
end