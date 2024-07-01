s = gets.split.map(&:to_i)
l = s[0]+s[1]
r = s[1]+s[2]
puts l > r ? "Left" : l < r ? "Right" : "Balanced"
