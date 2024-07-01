a,b,c = gets.chomp.split(" ").map(&:to_i)
x = 0
if b.div(a) <= c
  puts b.div(a)
else
  while b >= c
    x += 1
    b  = b - a
    if x = c
    end
  end
  puts x
end
