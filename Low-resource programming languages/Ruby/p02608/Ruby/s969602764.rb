num = gets.to_i

for n in 1..num do
  count = 0
  catch :same do
    for x in 1..num do
      for y in 1..num do
        for z in 1..num do
          if (x*x) + (y*y) + (z*z) > n
            throw :same
          end
          result = (x*x) + (y*y) + (z*z) + (x*y) + (y*z) + (z*x)
          if result > n
            break
          elsif result == n
            if [x,y,z].uniq.size == 1
              count += 1
              break
            elsif [x,y,z].uniq.size == 2
              count += 3
              throw :same
            end
          end
        end
      end
    end
  end
  p count
end