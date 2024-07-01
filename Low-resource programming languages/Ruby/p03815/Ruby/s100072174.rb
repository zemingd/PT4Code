X = gets.to_i 
a = (X % 11)
b = if a == 0 
      0 
  elsif a <= 6 
      1 
  else 
      2 
  end
puts (X / 11) * 2 + b