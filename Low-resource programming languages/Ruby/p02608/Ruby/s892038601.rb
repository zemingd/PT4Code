num = gets.to_i

nums = []
oks = {}

for x in 1..num do
  for y in 1..num do
    for z in 1..num do
      unless nums.include?(x + y + z)
        nums << x + y + z
        for n in 1..num do
          result = (x*x) + (y*y) + (z*z) + (x*y) + (y*z) + (z*x)
          if result == n
            oks[n] = [x,y,z]
          end
        end
      end
    end
  end
end

for n in 1..num do
  if oks[n].nil?
    puts 0
    next
  end

  if oks[n].uniq.size == 1
    puts 1
  elsif oks[n].uniq.size == 2
    puts 3
  else oks[n].uniq.size ==  3
    puts 6
  end
end
