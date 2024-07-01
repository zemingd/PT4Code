r,g,b = gets.split.map(&:to_s)
puts (r+g+b).to_i%4==0 ? 'YES':'NO'