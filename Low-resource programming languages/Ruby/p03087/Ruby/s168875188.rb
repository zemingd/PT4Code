LEN, QES = gets.chomp.split(" ").map(&:to_i)
STRING = gets.chomp

(0...QES).each do |i|
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts STRING.slice(l-1, r-1).scan("AC").size
end