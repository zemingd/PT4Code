n = gets.to_i
s = gets.chomp.chars

min = [s[1..-1].count("E"),s[0..-2].count("W")].min
counter = 0
(1..n-2).each do |i|
  west = s[0..i-1].count("W")
  east = s[i+1..-1].count("E")
  counter = west + east
  min = counter if min > counter
end

p min