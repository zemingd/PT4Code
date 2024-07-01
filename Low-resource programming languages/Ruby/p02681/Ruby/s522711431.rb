s = gets.chomp
t = gets.chomp.split('')
t.pop

puts s == t.join('') ? "Yes" : "No"