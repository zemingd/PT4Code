s = gets.chomp
a = ['MON','TUE','WED','THU','FRI','SAT','SUN']
ans = 6 - a.index(s)
puts ans == 0 ? 7 : ans
