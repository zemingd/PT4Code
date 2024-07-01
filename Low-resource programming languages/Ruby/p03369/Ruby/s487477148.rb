total = 700
a = gets.chomp.to_s

total += 100 if a[0] == "o"
total += 100 if a[1] == "o"
total += 100 if a[2] == "o"

puts total