a,b,c,d = gets.chomp.split.map(&:to_i)
puts 
  if (a+b) > (c+d)
      "Left"
  elsif (a+b) < (c+d)
      "Right"
  else
      "Balanced"
  end
