ar = gets.chomp.split.map(&:to_i)

ar.sort!

puts ar.join(" ")