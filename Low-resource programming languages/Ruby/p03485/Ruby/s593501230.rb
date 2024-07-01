s = gets.strip.chars.sort.reduce(:+)
t = gets.strip.chars.sort.reverse.reduce(:+)

put s < t ? 'Yes' : 'No'