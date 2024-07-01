s = gets.chomp
s = s.to_sym
a = { SUN: 7, MON: 6, TUE: 5, WED: 4, THU: 3, FRI: 2, SAT: 1 }
b = a[s]
puts b