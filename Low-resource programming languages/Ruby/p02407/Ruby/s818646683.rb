n = gets
a = gets.chomp.split(/\s/).map(&:to_i)
puts a.reverse.join(" ")