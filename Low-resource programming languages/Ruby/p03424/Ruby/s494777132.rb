gets
s = gets.chomp.split
puts s.uniq.size == 3 ? 'Three' : 'Four'