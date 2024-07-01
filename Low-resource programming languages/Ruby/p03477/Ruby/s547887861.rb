a,b,c,d = STDIN.gets.chomp.split.map{|s| s.to_i }

if (a+b) == (c+d)
  puts "Balanced"
elsif (a+b) > (c+d)
  puts "Left"
elsif (a+b) < (c+d)
  puts "Right"
end