s = gets.chomp.split('')

start = s.index('A')
last = s.rindex('Z')

puts last + 1 - start