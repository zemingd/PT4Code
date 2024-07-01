a1, a2, a3 = gets.strip.split.map { |x| x.to_i}

if (a1 + a2 + a3) >= 22
   puts "bust"
else
   puts "win"
end