n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

puts(a.reduce(&:+) - n)