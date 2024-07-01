s = gets.strip.chars.sort.reduce(:+)
t = gets.strip.chars.sort.reverse.reduce(:+)

p s < t ? 'Yes' : 'No'