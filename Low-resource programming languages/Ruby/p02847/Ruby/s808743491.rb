s = gets.chomp

y = 'SUN,MON,TUE,WED,THU,FRI,SAT'.split(?,)
puts (700 - y.index(s)) % 7 unless s == 'SUN'
puts '7' if s == 'SUN'