s = gets.chomp
t = gets.chomp

s2 = s.chars.sort.join
t2 = t.chars.sort.reverse.join

puts s2 < t2 ? 'Yes' : 'No'
