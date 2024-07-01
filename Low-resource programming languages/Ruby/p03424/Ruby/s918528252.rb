n = gets.chomp.to_i
s = gets.chomp.split
puts s.uniq.size == 4 ? 'Four' : 'Three'
