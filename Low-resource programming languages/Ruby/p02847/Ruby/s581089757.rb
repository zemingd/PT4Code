#n, m, k = gets.split.map(&:to_i)

s = gets.chomp

hh = {}
hh["SUN"] = 7
hh["MON"] = 6
hh["TUE"] = 5
hh["WED"] = 4
hh["THU"] = 3
hh["FRI"] = 2
hh["SAT"] = 1

puts hh[s]
