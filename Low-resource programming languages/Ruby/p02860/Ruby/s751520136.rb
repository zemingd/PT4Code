n = gets.to_i
s = gets.chomp.chars

puts "No" if n.odd?
puts "Yes" if s[0..(n/2-1)].join ==s[(n/2)..n].join