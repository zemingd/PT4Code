b, c= gets.split.map(&:to_i)
if b%a == 0
  puts b+c
else 
  puts c-b
end