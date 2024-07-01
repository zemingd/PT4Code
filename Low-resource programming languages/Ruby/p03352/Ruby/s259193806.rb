i = gets.to_i
foo = 0

for x in 1..1000
  for y in 2..1000
    foo = [foo, x ** y].max if x ** y <= i
    break if y > i
  end
  break if x > Math.sqrt(999)
end

puts foo