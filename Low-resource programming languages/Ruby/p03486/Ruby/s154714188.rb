s = gets.strip.chars.sort.reduce(:+)
t = gets.strip.chars.sort.reverse.reduce(:+)

puts s < t ? 'Yes' : 'No'