a,b,c,d = gets.chomp.split.map(&:to_i)
puts "Balanced" if a+b == c+d
puts  a+b > c+d ? "Left" : "Right"
