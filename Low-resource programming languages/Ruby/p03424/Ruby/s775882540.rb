N = gets.to_i
Ss = gets.split

puts Ss.any?{|s| s == 'Y'} ? 'Four' : 'Three'