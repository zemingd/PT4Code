x = gets.to_i
x.times do |i|
  if (x % 3 == 0)
    p i
  else (x % 10 == 3)
    p i
  end
end
puts