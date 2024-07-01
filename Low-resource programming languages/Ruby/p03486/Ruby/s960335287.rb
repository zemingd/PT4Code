s = gets.chomp.chars.sort
t = gets.chomp.chars.sort

ss = s.sort.join
tt = t.sort.reverse.join
puts ss < tt ? "Yes" : "No"