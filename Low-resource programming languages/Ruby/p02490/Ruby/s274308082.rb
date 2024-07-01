loop do
  c = gets.split.sort{|a,b|a.to_i<=>b.to_i}
  break if c == ["0","0"]
  puts "#{c[0]} #{c[1]}" 
end