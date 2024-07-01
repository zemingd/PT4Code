s = gets.chomp

array = ['SAT','FRI','THU','WED','TUE','MON','SUN']
# find_index(s) で左端から右端へ検索を行う
index = 0
index = array.find_index(s)

puts index + 1
