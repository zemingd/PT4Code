n = gets.to_i
for i in 1..n
  x = i
  if x % 3 == 0
    print " #{i}"
  elsif x.include?('3')
    print " #{i}
  end
end
puts