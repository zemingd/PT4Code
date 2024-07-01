n = gets.to_i
a = gets.split.map(&:to_i)
puts a.inject{|r,v| r + v - 1} - 1