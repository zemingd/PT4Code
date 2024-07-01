a = gets.split.map &:to_i
a.sort!

puts a.max - a.min