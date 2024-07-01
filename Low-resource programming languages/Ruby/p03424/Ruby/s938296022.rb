n = gets.chomp.to_i
#a = gets.chomp.split().map(&:to_i)
s = gets.chomp.split

puts s.uniq.size == 3 ? 'Three' : 'Four'
