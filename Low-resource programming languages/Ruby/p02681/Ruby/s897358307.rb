S = gets.chomp
T = gets.chomp

t = T.dup

cond = S == t.chop

puts cond ? 'Yes' : 'No'
