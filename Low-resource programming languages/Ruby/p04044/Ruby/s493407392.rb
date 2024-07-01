n, l = gets.split.map(&:to_i)
strings = []
n.times { strings << gets.chomp.slice(0..(l - 1)) }

puts strings.sort.join
