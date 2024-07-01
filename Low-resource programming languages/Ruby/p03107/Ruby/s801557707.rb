s = gets.chop

one = s.count('1')
zero = s.count('0')

puts ([one, zero].max-(one-zero).abs)*2
