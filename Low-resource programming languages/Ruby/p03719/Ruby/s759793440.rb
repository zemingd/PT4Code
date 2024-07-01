a,b,c = gets.split.map{|i| i.to_i}

if c >= a && c <= b
  puts"YES"
else
  puts "NO"
end
