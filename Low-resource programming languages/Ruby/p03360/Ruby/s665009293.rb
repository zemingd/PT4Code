abc = gets.split.map(&:to_i)
k = gets.to_i

abc.sort!

puts abc[0] + abc[1] + abc[2] * (2 ** k)