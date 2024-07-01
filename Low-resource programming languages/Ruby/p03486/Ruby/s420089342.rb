s=gets.chomp.split('')
t=gets.chomp.split('')
s.sort!
t.sort!
t.reverse!
puts (s<t ? 'Yes' : 'No')