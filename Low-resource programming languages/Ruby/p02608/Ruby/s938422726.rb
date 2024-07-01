num = gets.to_i

for n in 1..num do
  count = 0
  for x in 1..num do
    for y in 1..num do
      for z in 1..num do
        result = (x*x) + (y*y) + (z*z) + (x*y) + (y*z) + (z*x)
        if result == n
          count += 1
        end
      end
    end
  end
  p count
end