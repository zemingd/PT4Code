n = gets.chomp.to_i
s = gets.chomp.split("")
size = s.size
half = size / 2
a = s[0..half-1].join()
b = s[half..size-1].join()
puts a == b ? "Yes": "No"